package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapterModuleImp;
import com.chad.library.adapter.base.animation.AlphaInAnimation;
import com.chad.library.adapter.base.animation.BaseAnimation;
import com.chad.library.adapter.base.animation.ScaleInAnimation;
import com.chad.library.adapter.base.animation.SlideInBottomAnimation;
import com.chad.library.adapter.base.animation.SlideInLeftAnimation;
import com.chad.library.adapter.base.animation.SlideInRightAnimation;
import com.chad.library.adapter.base.diff.BrvahAsyncDiffer;
import com.chad.library.adapter.base.diff.BrvahAsyncDifferConfig;
import com.chad.library.adapter.base.diff.BrvahListUpdateCallback;
import com.chad.library.adapter.base.listener.BaseListenerImp;
import com.chad.library.adapter.base.listener.GridSpanSizeLookup;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemChildLongClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnItemLongClickListener;
import com.chad.library.adapter.base.module.BaseDraggableModule;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.BaseUpFetchModule;
import com.chad.library.adapter.base.module.DraggableModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.module.UpFetchModule;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: BaseQuickAdapter.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0098\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 ú\u0001*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u00042\u00020\u00052\u00020\u0006:\u0004ù\u0001ú\u0001B#\b\u0007\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010{\u001a\u00020|2\u0006\u0010}\u001a\u00020~H\u0002J\u0016\u0010\u007f\u001a\u00020|2\u000e\b\u0001\u0010\u0080\u0001\u001a\u00030\u0081\u0001\"\u00020\bJ\u0017\u0010\u0082\u0001\u001a\u00020|2\u000e\b\u0001\u0010\u0080\u0001\u001a\u00030\u0081\u0001\"\u00020\bJ\u0019\u0010\u0083\u0001\u001a\u00020|2\b\b\u0001\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0084\u0001J\"\u0010\u0083\u0001\u001a\u00020|2\t\b\u0001\u0010\u0085\u0001\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0086\u0001J$\u0010\u0083\u0001\u001a\u00020|2\t\b\u0001\u0010\u0085\u0001\u001a\u00020\b2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0088\u0001H\u0016J\u001b\u0010\u0083\u0001\u001a\u00020|2\u0010\b\u0001\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0088\u0001H\u0016J)\u0010\u0089\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\t\b\u0002\u0010\u008c\u0001\u001a\u00020\b2\t\b\u0002\u0010\u008d\u0001\u001a\u00020\bH\u0007J)\u0010\u008e\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\t\b\u0002\u0010\u008c\u0001\u001a\u00020\b2\t\b\u0002\u0010\u008d\u0001\u001a\u00020\bH\u0007J!\u0010\u008f\u0001\u001a\u00020|2\u0007\u0010\u0090\u0001\u001a\u00028\u00012\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0014¢\u0006\u0003\u0010\u0092\u0001J\t\u0010\u0093\u0001\u001a\u00020|H\u0002J\u0012\u0010\u0094\u0001\u001a\u00020|2\u0007\u0010\u0095\u0001\u001a\u00020\bH\u0004J \u0010\u0096\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00028\u00012\u0007\u0010\u0097\u0001\u001a\u00028\u0000H$¢\u0006\u0003\u0010\u0098\u0001J1\u0010\u0096\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00028\u00012\u0007\u0010\u0097\u0001\u001a\u00028\u00002\u000f\u0010\u0099\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010\u009a\u0001H\u0014¢\u0006\u0003\u0010\u009c\u0001J)\u0010\u009d\u0001\u001a\u0004\u0018\u00018\u00012\f\u0010\u009e\u0001\u001a\u0007\u0012\u0002\b\u00030\u009f\u00012\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0002¢\u0006\u0003\u0010 \u0001J\u0019\u0010¡\u0001\u001a\u00028\u00012\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0014¢\u0006\u0003\u0010¢\u0001J#\u0010¡\u0001\u001a\u00028\u00012\b\u0010£\u0001\u001a\u00030¤\u00012\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0014¢\u0006\u0003\u0010¥\u0001J\r\u0010¦\u0001\u001a\b\u0012\u0004\u0012\u00020\b0\u001aJ\r\u0010§\u0001\u001a\b\u0012\u0004\u0012\u00020\b0\u001aJ\t\u0010¨\u0001\u001a\u00020\bH\u0014J\u0012\u0010©\u0001\u001a\u00020\b2\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0014J\u000f\u0010ª\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000QH\u0007J\r\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000QJ\u001e\u0010¬\u0001\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u009f\u00012\f\u0010\u009e\u0001\u001a\u0007\u0012\u0002\b\u00030\u009f\u0001H\u0002J\u001a\u0010\u00ad\u0001\u001a\u00028\u00002\t\b\u0001\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0003\u0010®\u0001J\t\u0010¯\u0001\u001a\u00020\bH\u0016J\u0013\u0010°\u0001\u001a\u00030±\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0016J\u001c\u0010²\u0001\u001a\u0004\u0018\u00018\u00002\t\b\u0001\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0003\u0010®\u0001J\u001a\u0010³\u0001\u001a\u00020\b2\t\u0010\u0097\u0001\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0003\u0010´\u0001J\u0012\u0010µ\u0001\u001a\u00020\b2\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0016J\t\u0010¶\u0001\u001a\u0004\u0018\u00010\\J\t\u0010·\u0001\u001a\u0004\u0018\u00010^J\t\u0010¸\u0001\u001a\u0004\u0018\u00010`J\t\u0010¹\u0001\u001a\u0004\u0018\u00010bJ\u001e\u0010º\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0007\u0010\u0085\u0001\u001a\u00020\b2\t\b\u0001\u0010»\u0001\u001a\u00020\bJ\u0007\u0010¼\u0001\u001a\u00020\u0014J\u0007\u0010½\u0001\u001a\u00020\u0014J\u0007\u0010¾\u0001\u001a\u00020\u0014J\u0012\u0010¿\u0001\u001a\u00020\u00142\u0007\u0010À\u0001\u001a\u00020\bH\u0014J\u0011\u0010Á\u0001\u001a\u00020|2\u0006\u0010m\u001a\u00020dH\u0016J \u0010Â\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00028\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0003\u0010\u0092\u0001J0\u0010Â\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00028\u00012\u0007\u0010\u0085\u0001\u001a\u00020\b2\u000e\u0010\u0099\u0001\u001a\t\u0012\u0005\u0012\u00030\u009b\u00010\nH\u0016¢\u0006\u0003\u0010Ã\u0001J\"\u0010Ä\u0001\u001a\u00028\u00012\b\u0010£\u0001\u001a\u00030¤\u00012\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0014¢\u0006\u0003\u0010¥\u0001J\"\u0010Å\u0001\u001a\u00028\u00012\b\u0010£\u0001\u001a\u00030¤\u00012\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0016¢\u0006\u0003\u0010¥\u0001J\u0011\u0010Æ\u0001\u001a\u00020|2\u0006\u0010m\u001a\u00020dH\u0016J!\u0010Ç\u0001\u001a\u00020|2\u0007\u0010\u0090\u0001\u001a\u00028\u00012\u0007\u0010\u0091\u0001\u001a\u00020\bH\u0014¢\u0006\u0003\u0010\u0092\u0001J\u0017\u0010È\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00028\u0001H\u0016¢\u0006\u0003\u0010É\u0001J\u0017\u0010Ê\u0001\u001a\u00020|2\u0006\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0084\u0001J\u0014\u0010Ê\u0001\u001a\u00020|2\t\b\u0001\u0010\u0085\u0001\u001a\u00020\bH\u0017J\u0007\u0010Ë\u0001\u001a\u00020|J\u0007\u0010Ì\u0001\u001a\u00020|J\u0014\u0010Í\u0001\u001a\u00020|2\t\b\u0001\u0010\u0085\u0001\u001a\u00020\bH\u0016J\u0007\u0010Î\u0001\u001a\u00020|J\u0011\u0010Ï\u0001\u001a\u00020|2\b\u0010Ð\u0001\u001a\u00030\u008b\u0001J\u0011\u0010Ñ\u0001\u001a\u00020|2\b\u0010Ò\u0001\u001a\u00030\u008b\u0001J\u0019\u0010Ó\u0001\u001a\u00020|2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0088\u0001H\u0017J\u0011\u0010Ô\u0001\u001a\u00020|2\b\u0010Õ\u0001\u001a\u00030Ö\u0001J\"\u0010×\u0001\u001a\u00020|2\t\b\u0001\u0010\u008c\u0001\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0086\u0001J\u0017\u0010Ø\u0001\u001a\u00020|2\u000e\u0010Ù\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000Ú\u0001J\u0017\u0010Û\u0001\u001a\u00020|2\u000e\u0010Ü\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000Ý\u0001J$\u0010Þ\u0001\u001a\u00020|2\n\b\u0001\u0010ß\u0001\u001a\u00030à\u00012\r\u0010á\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016J\u001a\u0010Þ\u0001\u001a\u00020|2\u000f\u0010á\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\nH\u0016J\u0011\u0010â\u0001\u001a\u00020|2\b\u0010ã\u0001\u001a\u00030\u008b\u0001J\u000f\u0010â\u0001\u001a\u00020|2\u0006\u0010\u0007\u001a\u00020\bJ)\u0010ä\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\t\b\u0002\u0010\u008c\u0001\u001a\u00020\b2\t\b\u0002\u0010\u008d\u0001\u001a\u00020\bH\u0007J\u0011\u0010å\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00020~H\u0014J\u0014\u0010æ\u0001\u001a\u00020|2\t\u0010ç\u0001\u001a\u0004\u0018\u00010jH\u0016J)\u0010è\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\t\b\u0002\u0010\u008c\u0001\u001a\u00020\b2\t\b\u0002\u0010\u008d\u0001\u001a\u00020\bH\u0007J\u001b\u0010é\u0001\u001a\u00020|2\u0010\u0010á\u0001\u001a\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0088\u0001H\u0016J\u0019\u0010ê\u0001\u001a\u00020|2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\nH\u0017J\u001a\u0010ë\u0001\u001a\u00020|2\u000f\u0010á\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\nH\u0016J\u001c\u0010ì\u0001\u001a\u00020|2\b\u0010í\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0014J\u0014\u0010î\u0001\u001a\u00020|2\t\u0010ï\u0001\u001a\u0004\u0018\u00010\\H\u0016J\u001c\u0010ð\u0001\u001a\u00020\u00142\b\u0010í\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0014J\u0014\u0010ñ\u0001\u001a\u00020|2\t\u0010ï\u0001\u001a\u0004\u0018\u00010^H\u0016J\u001c\u0010ò\u0001\u001a\u00020|2\b\u0010í\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0014J\u0014\u0010ó\u0001\u001a\u00020|2\t\u0010ï\u0001\u001a\u0004\u0018\u00010`H\u0016J\u001c\u0010ô\u0001\u001a\u00020\u00142\b\u0010í\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u0085\u0001\u001a\u00020\bH\u0014J\u0014\u0010õ\u0001\u001a\u00020|2\t\u0010ï\u0001\u001a\u0004\u0018\u00010bH\u0016J\u001c\u0010ö\u0001\u001a\u00020|2\b\u0010÷\u0001\u001a\u00030ø\u00012\u0007\u0010\u008c\u0001\u001a\u00020\bH\u0014R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d@BX\u0084.¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R0\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0013\u0010)\u001a\u0004\u0018\u00010*8F¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0013\u0010-\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0011\u00101\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b2\u00103R\u001a\u00104\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0016\"\u0004\b6\u0010\u0018R\u0011\u00107\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b8\u00103R\u001a\u00109\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0016\"\u0004\b;\u0010\u0018R\u0013\u0010<\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b=\u00100R\u0011\u0010>\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b?\u00103R\u001a\u0010@\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u0016\"\u0004\bB\u0010\u0018R\u0011\u0010C\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\bD\u00103R\u001a\u0010E\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u0016\"\u0004\bG\u0010\u0018R\u001a\u0010H\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u0016\"\u0004\bI\u0010\u0018R\u001a\u0010J\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u0016\"\u0004\bK\u0010\u0018R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010L\u001a\u00020M8F¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0016\u0010P\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010QX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020*X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020.X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020.X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010W\u001a\u0004\u0018\u00010MX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010O\"\u0004\bY\u0010ZR\u0010\u0010[\u001a\u0004\u0018\u00010\\X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u0004\u0018\u00010^X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u0004\u0018\u00010bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010c\u001a\u0004\u0018\u00010dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0010\u0010i\u001a\u0004\u0018\u00010jX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010k\u001a\u0004\u0018\u00010lX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010m\u001a\u00020d2\u0006\u0010\f\u001a\u00020d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bn\u0010f\"\u0004\bo\u0010hR\u0011\u0010p\u001a\u00020l8F¢\u0006\u0006\u001a\u0004\bq\u0010rR*\u0010s\u001a\b\u0012\u0004\u0012\u00020d0t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\bu\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010z¨\u0006û\u0001"}, m849d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "VH", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;", "Lcom/chad/library/adapter/base/listener/BaseListenerImp;", "layoutResId", "", "data", "", "(ILjava/util/List;)V", "value", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "adapterAnimation", "getAdapterAnimation", "()Lcom/chad/library/adapter/base/animation/BaseAnimation;", "setAdapterAnimation", "(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V", "animationEnable", "", "getAnimationEnable", "()Z", "setAnimationEnable", "(Z)V", "childClickViewIds", "Ljava/util/LinkedHashSet;", "childLongClickViewIds", "<set-?>", "Landroid/content/Context;", "context", "getContext", "()Landroid/content/Context;", "getData", "()Ljava/util/List;", "setData$com_github_CymChad_brvah", "(Ljava/util/List;)V", "draggableModule", "Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "getDraggableModule", "()Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "emptyLayout", "Landroid/widget/FrameLayout;", "getEmptyLayout", "()Landroid/widget/FrameLayout;", "footerLayout", "Landroid/widget/LinearLayout;", "getFooterLayout", "()Landroid/widget/LinearLayout;", "footerLayoutCount", "getFooterLayoutCount", "()I", "footerViewAsFlow", "getFooterViewAsFlow", "setFooterViewAsFlow", "footerViewPosition", "getFooterViewPosition", "footerWithEmptyEnable", "getFooterWithEmptyEnable", "setFooterWithEmptyEnable", "headerLayout", "getHeaderLayout", "headerLayoutCount", "getHeaderLayoutCount", "headerViewAsFlow", "getHeaderViewAsFlow", "setHeaderViewAsFlow", "headerViewPosition", "getHeaderViewPosition", "headerWithEmptyEnable", "getHeaderWithEmptyEnable", "setHeaderWithEmptyEnable", "isAnimationFirstOnly", "setAnimationFirstOnly", "isUseEmpty", "setUseEmpty", "loadMoreModule", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "getLoadMoreModule", "()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "mDiffHelper", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;", "mDraggableModule", "mEmptyLayout", "mFooterLayout", "mHeaderLayout", "mLastPosition", "mLoadMoreModule", "getMLoadMoreModule$com_github_CymChad_brvah", "setMLoadMoreModule$com_github_CymChad_brvah", "(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V", "mOnItemChildClickListener", "Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;", "mOnItemChildLongClickListener", "Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;", "mOnItemClickListener", "Lcom/chad/library/adapter/base/listener/OnItemClickListener;", "mOnItemLongClickListener", "Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMRecyclerView$com_github_CymChad_brvah", "()Landroidx/recyclerview/widget/RecyclerView;", "setMRecyclerView$com_github_CymChad_brvah", "(Landroidx/recyclerview/widget/RecyclerView;)V", "mSpanSizeLookup", "Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;", "mUpFetchModule", "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "recyclerView", "getRecyclerView", "setRecyclerView", "upFetchModule", "getUpFetchModule", "()Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "weakRecyclerView", "Ljava/lang/ref/WeakReference;", "weakRecyclerView$annotations", "()V", "getWeakRecyclerView", "()Ljava/lang/ref/WeakReference;", "setWeakRecyclerView", "(Ljava/lang/ref/WeakReference;)V", "addAnimation", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "addChildClickViewIds", "viewIds", "", "addChildLongClickViewIds", "addData", "(Ljava/lang/Object;)V", "position", "(ILjava/lang/Object;)V", "newData", "", "addFooterView", "view", "Landroid/view/View;", "index", "orientation", "addHeaderView", "bindViewClickListener", "viewHolder", "viewType", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "checkModule", "compatibilityDataSizeChanged", "size", "convert", "item", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "payloads", "", "", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "createBaseGenericKInstance", "z", "Ljava/lang/Class;", "(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "createBaseViewHolder", "(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "getChildClickViewIds", "getChildLongClickViewIds", "getDefItemCount", "getDefItemViewType", "getDiffHelper", "getDiffer", "getInstancedGenericKClass", "getItem", "(I)Ljava/lang/Object;", "getItemCount", "getItemId", "", "getItemOrNull", "getItemPosition", "(Ljava/lang/Object;)I", "getItemViewType", "getOnItemChildClickListener", "getOnItemChildLongClickListener", "getOnItemClickListener", "getOnItemLongClickListener", "getViewByPosition", "viewId", "hasEmptyView", "hasFooterLayout", "hasHeaderLayout", "isFixedViewType", "type", "onAttachedToRecyclerView", "onBindViewHolder", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V", "onCreateDefViewHolder", "onCreateViewHolder", "onDetachedFromRecyclerView", "onItemViewHolderCreated", "onViewAttachedToWindow", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "remove", "removeAllFooterView", "removeAllHeaderView", "removeAt", "removeEmptyView", "removeFooterView", "footer", "removeHeaderView", "header", "replaceData", "setAnimationWithDefault", "animationType", "Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "setData", "setDiffCallback", "diffCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "setDiffConfig", "config", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", "setDiffNewData", "diffResult", "Landroidx/recyclerview/widget/DiffUtil$DiffResult;", "list", "setEmptyView", "emptyView", "setFooterView", "setFullSpan", "setGridSpanSizeLookup", "spanSizeLookup", "setHeaderView", "setList", "setNewData", "setNewInstance", "setOnItemChildClick", "v", "setOnItemChildClickListener", "listener", "setOnItemChildLongClick", "setOnItemChildLongClickListener", "setOnItemClick", "setOnItemClickListener", "setOnItemLongClick", "setOnItemLongClickListener", "startAnim", "anim", "Landroid/animation/Animator;", "AnimationType", "Companion", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public abstract class BaseQuickAdapter<T, VH extends BaseViewHolder> extends RecyclerView.Adapter<VH> implements BaseQuickAdapterModuleImp, BaseListenerImp {
    public static final int EMPTY_VIEW = 268436821;
    public static final int FOOTER_VIEW = 268436275;
    public static final int HEADER_VIEW = 268435729;
    public static final int LOAD_MORE_VIEW = 268436002;
    private BaseAnimation adapterAnimation;
    private boolean animationEnable;
    private final LinkedHashSet<Integer> childClickViewIds;
    private final LinkedHashSet<Integer> childLongClickViewIds;
    private Context context;
    private List<T> data;
    private boolean footerViewAsFlow;
    private boolean footerWithEmptyEnable;
    private boolean headerViewAsFlow;
    private boolean headerWithEmptyEnable;
    private boolean isAnimationFirstOnly;
    private boolean isUseEmpty;
    private final int layoutResId;
    private BrvahAsyncDiffer<T> mDiffHelper;
    private BaseDraggableModule mDraggableModule;
    private FrameLayout mEmptyLayout;
    private LinearLayout mFooterLayout;
    private LinearLayout mHeaderLayout;
    private int mLastPosition;
    private BaseLoadMoreModule mLoadMoreModule;
    private OnItemChildClickListener mOnItemChildClickListener;
    private OnItemChildLongClickListener mOnItemChildLongClickListener;
    private OnItemClickListener mOnItemClickListener;
    private OnItemLongClickListener mOnItemLongClickListener;
    private RecyclerView mRecyclerView;
    private GridSpanSizeLookup mSpanSizeLookup;
    private BaseUpFetchModule mUpFetchModule;
    public WeakReference<RecyclerView> weakRecyclerView;

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m849d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight
    }

    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[AnimationType.values().length];

        static {
            $EnumSwitchMapping$0[AnimationType.AlphaIn.ordinal()] = 1;
            $EnumSwitchMapping$0[AnimationType.ScaleIn.ordinal()] = 2;
            $EnumSwitchMapping$0[AnimationType.SlideInBottom.ordinal()] = 3;
            $EnumSwitchMapping$0[AnimationType.SlideInLeft.ordinal()] = 4;
            $EnumSwitchMapping$0[AnimationType.SlideInRight.ordinal()] = 5;
        }
    }

    public BaseQuickAdapter(int i) {
        this(i, null, 2, 0 == true ? 1 : 0);
    }

    @Deprecated(message = "Please use recyclerView", replaceWith = @ReplaceWith(expression = "recyclerView", imports = {}))
    public static /* synthetic */ void weakRecyclerView$annotations() {
    }

    public final int addFooterView(View view) {
        return addFooterView$default(this, view, 0, 0, 6, null);
    }

    public final int addFooterView(View view, int i) {
        return addFooterView$default(this, view, i, 0, 4, null);
    }

    public final int addHeaderView(View view) {
        return addHeaderView$default(this, view, 0, 0, 6, null);
    }

    public final int addHeaderView(View view, int i) {
        return addHeaderView$default(this, view, i, 0, 4, null);
    }

    protected abstract void convert(VH holder, T item);

    protected void convert(VH holder, T item, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    protected boolean isFixedViewType(int type) {
        return type == 268436821 || type == 268435729 || type == 268436275 || type == 268436002;
    }

    protected void onItemViewHolderCreated(VH viewHolder, int viewType) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
    }

    public final int setFooterView(View view) {
        return setFooterView$default(this, view, 0, 0, 6, null);
    }

    public final int setFooterView(View view, int i) {
        return setFooterView$default(this, view, i, 0, 4, null);
    }

    public final int setHeaderView(View view) {
        return setHeaderView$default(this, view, 0, 0, 6, null);
    }

    public final int setHeaderView(View view, int i) {
        return setHeaderView$default(this, view, i, 0, 4, null);
    }

    public static final /* synthetic */ FrameLayout access$getMEmptyLayout$p(BaseQuickAdapter baseQuickAdapter) {
        FrameLayout frameLayout = baseQuickAdapter.mEmptyLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        }
        return frameLayout;
    }

    public static final /* synthetic */ LinearLayout access$getMFooterLayout$p(BaseQuickAdapter baseQuickAdapter) {
        LinearLayout linearLayout = baseQuickAdapter.mFooterLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        return linearLayout;
    }

    public static final /* synthetic */ LinearLayout access$getMHeaderLayout$p(BaseQuickAdapter baseQuickAdapter) {
        LinearLayout linearLayout = baseQuickAdapter.mHeaderLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        return linearLayout;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapterModuleImp
    public BaseDraggableModule addDraggableModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkParameterIsNotNull(baseQuickAdapter, "baseQuickAdapter");
        return BaseQuickAdapterModuleImp.DefaultImpls.addDraggableModule(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapterModuleImp
    public BaseLoadMoreModule addLoadMoreModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkParameterIsNotNull(baseQuickAdapter, "baseQuickAdapter");
        return BaseQuickAdapterModuleImp.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapterModuleImp
    public BaseUpFetchModule addUpFetchModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkParameterIsNotNull(baseQuickAdapter, "baseQuickAdapter");
        return BaseQuickAdapterModuleImp.DefaultImpls.addUpFetchModule(this, baseQuickAdapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((BaseQuickAdapter<T, VH>) viewHolder, i, (List<Object>) list);
    }

    public /* synthetic */ BaseQuickAdapter(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? (List) null : list);
    }

    public BaseQuickAdapter(int i, ArrayList arrayList) {
        this.layoutResId = i;
        this.data = arrayList == null ? new ArrayList() : arrayList;
        this.isUseEmpty = true;
        this.isAnimationFirstOnly = true;
        this.mLastPosition = -1;
        checkModule();
        this.childClickViewIds = new LinkedHashSet<>();
        this.childLongClickViewIds = new LinkedHashSet<>();
    }

    public final List<T> getData() {
        return this.data;
    }

    public final void setData$com_github_CymChad_brvah(List<T> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.data = list;
    }

    public final boolean getHeaderWithEmptyEnable() {
        return this.headerWithEmptyEnable;
    }

    public final void setHeaderWithEmptyEnable(boolean z) {
        this.headerWithEmptyEnable = z;
    }

    public final boolean getFooterWithEmptyEnable() {
        return this.footerWithEmptyEnable;
    }

    public final void setFooterWithEmptyEnable(boolean z) {
        this.footerWithEmptyEnable = z;
    }

    /* renamed from: isUseEmpty, reason: from getter */
    public final boolean getIsUseEmpty() {
        return this.isUseEmpty;
    }

    public final void setUseEmpty(boolean z) {
        this.isUseEmpty = z;
    }

    public final boolean getHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public final void setHeaderViewAsFlow(boolean z) {
        this.headerViewAsFlow = z;
    }

    public final boolean getFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public final void setFooterViewAsFlow(boolean z) {
        this.footerViewAsFlow = z;
    }

    public final boolean getAnimationEnable() {
        return this.animationEnable;
    }

    public final void setAnimationEnable(boolean z) {
        this.animationEnable = z;
    }

    /* renamed from: isAnimationFirstOnly, reason: from getter */
    public final boolean getIsAnimationFirstOnly() {
        return this.isAnimationFirstOnly;
    }

    public final void setAnimationFirstOnly(boolean z) {
        this.isAnimationFirstOnly = z;
    }

    public final BaseAnimation getAdapterAnimation() {
        return this.adapterAnimation;
    }

    public final void setAdapterAnimation(BaseAnimation baseAnimation) {
        this.animationEnable = true;
        this.adapterAnimation = baseAnimation;
    }

    public final BaseLoadMoreModule getLoadMoreModule() {
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule == null) {
            throw new IllegalStateException("Please first implements LoadMoreModule".toString());
        }
        if (baseLoadMoreModule == null) {
            Intrinsics.throwNpe();
        }
        return baseLoadMoreModule;
    }

    public final BaseUpFetchModule getUpFetchModule() {
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule == null) {
            throw new IllegalStateException("Please first implements UpFetchModule".toString());
        }
        if (baseUpFetchModule == null) {
            Intrinsics.throwNpe();
        }
        return baseUpFetchModule;
    }

    public final BaseDraggableModule getDraggableModule() {
        BaseDraggableModule baseDraggableModule = this.mDraggableModule;
        if (baseDraggableModule == null) {
            throw new IllegalStateException("Please first implements DraggableModule".toString());
        }
        if (baseDraggableModule == null) {
            Intrinsics.throwNpe();
        }
        return baseDraggableModule;
    }

    /* renamed from: getMLoadMoreModule$com_github_CymChad_brvah, reason: from getter */
    public final BaseLoadMoreModule getMLoadMoreModule() {
        return this.mLoadMoreModule;
    }

    public final void setMLoadMoreModule$com_github_CymChad_brvah(BaseLoadMoreModule baseLoadMoreModule) {
        this.mLoadMoreModule = baseLoadMoreModule;
    }

    protected final Context getContext() {
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        return context;
    }

    public final WeakReference<RecyclerView> getWeakRecyclerView() {
        WeakReference<RecyclerView> weakReference = this.weakRecyclerView;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("weakRecyclerView");
        }
        return weakReference;
    }

    public final void setWeakRecyclerView(WeakReference<RecyclerView> weakReference) {
        Intrinsics.checkParameterIsNotNull(weakReference, "<set-?>");
        this.weakRecyclerView = weakReference;
    }

    /* renamed from: getMRecyclerView$com_github_CymChad_brvah, reason: from getter */
    public final RecyclerView getMRecyclerView() {
        return this.mRecyclerView;
    }

    public final void setMRecyclerView$com_github_CymChad_brvah(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    public final void setRecyclerView(RecyclerView value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        this.mRecyclerView = value;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            throw new IllegalStateException("Please get it after onAttachedToRecyclerView()".toString());
        }
        if (recyclerView == null) {
            Intrinsics.throwNpe();
        }
        return recyclerView;
    }

    private final void checkModule() {
        if (this instanceof LoadMoreModule) {
            this.mLoadMoreModule = addLoadMoreModule(this);
        }
        if (this instanceof UpFetchModule) {
            this.mUpFetchModule = addUpFetchModule(this);
        }
        if (this instanceof DraggableModule) {
            this.mDraggableModule = addDraggableModule(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        switch (viewType) {
            case HEADER_VIEW /* 268435729 */:
                LinearLayout linearLayout = this.mHeaderLayout;
                if (linearLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                }
                ViewParent parent2 = linearLayout.getParent();
                if (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    LinearLayout linearLayout2 = this.mHeaderLayout;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                    }
                    viewGroup.removeView(linearLayout2);
                }
                LinearLayout linearLayout3 = this.mHeaderLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                }
                return (VH) createBaseViewHolder(linearLayout3);
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
                if (baseLoadMoreModule == null) {
                    Intrinsics.throwNpe();
                }
                VH vh = (VH) createBaseViewHolder(baseLoadMoreModule.getLoadMoreView().getRootView(parent));
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                if (baseLoadMoreModule2 == null) {
                    Intrinsics.throwNpe();
                }
                baseLoadMoreModule2.setupViewHolder$com_github_CymChad_brvah(vh);
                return vh;
            case FOOTER_VIEW /* 268436275 */:
                LinearLayout linearLayout4 = this.mFooterLayout;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                }
                ViewParent parent3 = linearLayout4.getParent();
                if (parent3 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent3;
                    LinearLayout linearLayout5 = this.mFooterLayout;
                    if (linearLayout5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                    }
                    viewGroup2.removeView(linearLayout5);
                }
                LinearLayout linearLayout6 = this.mFooterLayout;
                if (linearLayout6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                }
                return (VH) createBaseViewHolder(linearLayout6);
            case EMPTY_VIEW /* 268436821 */:
                FrameLayout frameLayout = this.mEmptyLayout;
                if (frameLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                }
                ViewParent parent4 = frameLayout.getParent();
                if (parent4 instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) parent4;
                    FrameLayout frameLayout2 = this.mEmptyLayout;
                    if (frameLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                    }
                    viewGroup3.removeView(frameLayout2);
                }
                FrameLayout frameLayout3 = this.mEmptyLayout;
                if (frameLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                }
                return (VH) createBaseViewHolder(frameLayout3);
            default:
                VH vh2 = (VH) onCreateDefViewHolder(parent, viewType);
                bindViewClickListener(vh2, viewType);
                BaseDraggableModule baseDraggableModule = this.mDraggableModule;
                if (baseDraggableModule != null) {
                    baseDraggableModule.initView$com_github_CymChad_brvah(vh2);
                }
                onItemViewHolderCreated(vh2, viewType);
                return vh2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (hasEmptyView()) {
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i = 2;
            }
            return (this.footerWithEmptyEnable && hasFooterLayout()) ? i + 1 : i;
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        return getHeaderLayoutCount() + getDefItemCount() + getFooterLayoutCount() + ((baseLoadMoreModule == null || !baseLoadMoreModule.hasLoadMoreView()) ? 0 : 1);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (hasEmptyView()) {
            boolean z = this.headerWithEmptyEnable && hasHeaderLayout();
            if (position == 0) {
                return z ? HEADER_VIEW : EMPTY_VIEW;
            }
            if (position != 1) {
                if (position != 2) {
                    return EMPTY_VIEW;
                }
            } else if (z) {
                return EMPTY_VIEW;
            }
            return FOOTER_VIEW;
        }
        boolean zHasHeaderLayout = hasHeaderLayout();
        if (zHasHeaderLayout && position == 0) {
            return HEADER_VIEW;
        }
        if (zHasHeaderLayout) {
            position--;
        }
        int size = this.data.size();
        if (position < size) {
            return getDefItemViewType(position);
        }
        return position - size < hasFooterLayout() ? FOOTER_VIEW : LOAD_MORE_VIEW;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH holder, int position) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule != null) {
            baseUpFetchModule.autoUpFetch$com_github_CymChad_brvah(position);
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.autoLoadMore$com_github_CymChad_brvah(position);
        }
        switch (holder.getItemViewType()) {
            case HEADER_VIEW /* 268435729 */:
            case FOOTER_VIEW /* 268436275 */:
            case EMPTY_VIEW /* 268436821 */:
                break;
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                if (baseLoadMoreModule2 != null) {
                    baseLoadMoreModule2.getLoadMoreView().convert(holder, position, baseLoadMoreModule2.getLoadMoreStatus());
                    break;
                }
                break;
            default:
                convert(holder, getItem(position - getHeaderLayoutCount()));
                break;
        }
    }

    public void onBindViewHolder(VH holder, int position, List<Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder((BaseQuickAdapter<T, VH>) holder, position);
        }
        BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
        if (baseUpFetchModule != null) {
            baseUpFetchModule.autoUpFetch$com_github_CymChad_brvah(position);
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.autoLoadMore$com_github_CymChad_brvah(position);
        }
        switch (holder.getItemViewType()) {
            case HEADER_VIEW /* 268435729 */:
            case FOOTER_VIEW /* 268436275 */:
            case EMPTY_VIEW /* 268436821 */:
                break;
            case LOAD_MORE_VIEW /* 268436002 */:
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                if (baseLoadMoreModule2 != null) {
                    baseLoadMoreModule2.getLoadMoreView().convert(holder, position, baseLoadMoreModule2.getLoadMoreStatus());
                    break;
                }
                break;
            default:
                convert(holder, getItem(position - getHeaderLayoutCount()), payloads);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(VH holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        VH vh = holder;
        super.onViewAttachedToWindow((BaseQuickAdapter<T, VH>) vh);
        if (isFixedViewType(holder.getItemViewType())) {
            setFullSpan(vh);
        } else {
            addAnimation(vh);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.weakRecyclerView = new WeakReference<>(recyclerView);
        this.mRecyclerView = recyclerView;
        Context context = recyclerView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "recyclerView.context");
        this.context = context;
        BaseDraggableModule baseDraggableModule = this.mDraggableModule;
        if (baseDraggableModule != null) {
            baseDraggableModule.attachToRecyclerView(recyclerView);
        }
        final RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.onAttachedToRecyclerView.1
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int position) {
                    int itemViewType = BaseQuickAdapter.this.getItemViewType(position);
                    if (itemViewType == 268435729 && BaseQuickAdapter.this.getHeaderViewAsFlow()) {
                        return 1;
                    }
                    if (itemViewType == 268436275 && BaseQuickAdapter.this.getFooterViewAsFlow()) {
                        return 1;
                    }
                    if (BaseQuickAdapter.this.mSpanSizeLookup == null) {
                        return BaseQuickAdapter.this.isFixedViewType(itemViewType) ? ((GridLayoutManager) layoutManager).getSpanCount() : spanSizeLookup.getSpanSize(position);
                    }
                    if (!BaseQuickAdapter.this.isFixedViewType(itemViewType)) {
                        GridSpanSizeLookup gridSpanSizeLookup = BaseQuickAdapter.this.mSpanSizeLookup;
                        if (gridSpanSizeLookup == null) {
                            Intrinsics.throwNpe();
                        }
                        return gridSpanSizeLookup.getSpanSize((GridLayoutManager) layoutManager, itemViewType, position - BaseQuickAdapter.this.getHeaderLayoutCount());
                    }
                    return ((GridLayoutManager) layoutManager).getSpanCount();
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.mRecyclerView = (RecyclerView) null;
    }

    public T getItem(int position) {
        return this.data.get(position);
    }

    public T getItemOrNull(int position) {
        return (T) CollectionsKt.getOrNull(this.data, position);
    }

    public int getItemPosition(T item) {
        if (item == null || !(!this.data.isEmpty())) {
            return -1;
        }
        return this.data.indexOf(item);
    }

    public final LinkedHashSet<Integer> getChildClickViewIds() {
        return this.childClickViewIds;
    }

    public final void addChildClickViewIds(int... viewIds) {
        Intrinsics.checkParameterIsNotNull(viewIds, "viewIds");
        for (int i : viewIds) {
            this.childClickViewIds.add(Integer.valueOf(i));
        }
    }

    public final LinkedHashSet<Integer> getChildLongClickViewIds() {
        return this.childLongClickViewIds;
    }

    public final void addChildLongClickViewIds(int... viewIds) {
        Intrinsics.checkParameterIsNotNull(viewIds, "viewIds");
        for (int i : viewIds) {
            this.childLongClickViewIds.add(Integer.valueOf(i));
        }
    }

    protected void bindViewClickListener(final VH viewHolder, int viewType) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (this.mOnItemClickListener != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$bindViewClickListener$$inlined$let$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return;
                    }
                    int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                    BaseQuickAdapter baseQuickAdapter = this.this$0;
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    baseQuickAdapter.setOnItemClick(v, headerLayoutCount);
                }
            });
        }
        if (this.mOnItemLongClickListener != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$bindViewClickListener$$inlined$let$lambda$2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return false;
                    }
                    int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                    BaseQuickAdapter baseQuickAdapter = this.this$0;
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    return baseQuickAdapter.setOnItemLongClick(v, headerLayoutCount);
                }
            });
        }
        if (this.mOnItemChildClickListener != null) {
            Iterator<Integer> it = getChildClickViewIds().iterator();
            while (it.hasNext()) {
                Integer id = it.next();
                View view = viewHolder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(id, "id");
                View viewFindViewById = view.findViewById(id.intValue());
                if (viewFindViewById != null) {
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$bindViewClickListener$$inlined$let$lambda$3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View v) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition == -1) {
                                return;
                            }
                            int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                            BaseQuickAdapter baseQuickAdapter = this.this$0;
                            Intrinsics.checkExpressionValueIsNotNull(v, "v");
                            baseQuickAdapter.setOnItemChildClick(v, headerLayoutCount);
                        }
                    });
                }
            }
        }
        if (this.mOnItemChildLongClickListener != null) {
            Iterator<Integer> it2 = getChildLongClickViewIds().iterator();
            while (it2.hasNext()) {
                Integer id2 = it2.next();
                View view2 = viewHolder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(id2, "id");
                View viewFindViewById2 = view2.findViewById(id2.intValue());
                if (viewFindViewById2 != null) {
                    if (!viewFindViewById2.isLongClickable()) {
                        viewFindViewById2.setLongClickable(true);
                    }
                    viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$bindViewClickListener$$inlined$let$lambda$4
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View v) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition == -1) {
                                return false;
                            }
                            int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                            BaseQuickAdapter baseQuickAdapter = this.this$0;
                            Intrinsics.checkExpressionValueIsNotNull(v, "v");
                            return baseQuickAdapter.setOnItemChildLongClick(v, headerLayoutCount);
                        }
                    });
                }
            }
        }
    }

    protected void setOnItemClick(View v, int position) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(this, v, position);
        }
    }

    protected boolean setOnItemLongClick(View v, int position) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        if (onItemLongClickListener != null) {
            return onItemLongClickListener.onItemLongClick(this, v, position);
        }
        return false;
    }

    protected void setOnItemChildClick(View v, int position) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        OnItemChildClickListener onItemChildClickListener = this.mOnItemChildClickListener;
        if (onItemChildClickListener != null) {
            onItemChildClickListener.onItemChildClick(this, v, position);
        }
    }

    protected boolean setOnItemChildLongClick(View v, int position) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        OnItemChildLongClickListener onItemChildLongClickListener = this.mOnItemChildLongClickListener;
        if (onItemChildLongClickListener != null) {
            return onItemChildLongClickListener.onItemChildLongClick(this, v, position);
        }
        return false;
    }

    protected int getDefItemCount() {
        return this.data.size();
    }

    protected int getDefItemViewType(int position) {
        return super.getItemViewType(position);
    }

    protected VH onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        return (VH) createBaseViewHolder(parent, this.layoutResId);
    }

    protected VH createBaseViewHolder(ViewGroup parent, int layoutResId) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        return (VH) createBaseViewHolder(AdapterUtilsKt.getItemView(parent, layoutResId));
    }

    protected VH createBaseViewHolder(View view) {
        VH vh;
        Intrinsics.checkParameterIsNotNull(view, "view");
        Class<?> instancedGenericKClass = (Class) null;
        for (Class<?> superclass = getClass(); instancedGenericKClass == null && superclass != null; superclass = superclass.getSuperclass()) {
            instancedGenericKClass = getInstancedGenericKClass(superclass);
        }
        if (instancedGenericKClass == null) {
            vh = (VH) new BaseViewHolder(view);
        } else {
            vh = (VH) createBaseGenericKInstance(instancedGenericKClass, view);
        }
        return vh != null ? vh : (VH) new BaseViewHolder(view);
    }

    private final Class<?> getInstancedGenericKClass(Class<?> z) {
        try {
            Type genericSuperclass = z.getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType)) {
                return null;
            }
            Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
            Intrinsics.checkExpressionValueIsNotNull(actualTypeArguments, "type.actualTypeArguments");
            for (Type type : actualTypeArguments) {
                if (type instanceof Class) {
                    if (BaseViewHolder.class.isAssignableFrom((Class) type)) {
                        return (Class) type;
                    }
                } else if (type instanceof ParameterizedType) {
                    Type rawType = ((ParameterizedType) type).getRawType();
                    Intrinsics.checkExpressionValueIsNotNull(rawType, "temp.rawType");
                    if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                        return (Class) rawType;
                    }
                } else {
                    continue;
                }
            }
            return null;
        } catch (TypeNotPresentException e) {
            e.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e2) {
            e2.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private final VH createBaseGenericKInstance(Class<?> z, View view) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            if (z.isMemberClass() && !Modifier.isStatic(z.getModifiers())) {
                Constructor<?> declaredConstructor = z.getDeclaredConstructor(getClass(), View.class);
                Intrinsics.checkExpressionValueIsNotNull(declaredConstructor, "z.getDeclaredConstructor…aClass, View::class.java)");
                declaredConstructor.setAccessible(true);
                Object objNewInstance = declaredConstructor.newInstance(this, view);
                if (objNewInstance != null) {
                    return (VH) objNewInstance;
                }
                throw new TypeCastException("null cannot be cast to non-null type VH");
            }
            Constructor<?> declaredConstructor2 = z.getDeclaredConstructor(View.class);
            Intrinsics.checkExpressionValueIsNotNull(declaredConstructor2, "z.getDeclaredConstructor(View::class.java)");
            declaredConstructor2.setAccessible(true);
            Object objNewInstance2 = declaredConstructor2.newInstance(view);
            if (objNewInstance2 != null) {
                return (VH) objNewInstance2;
            }
            throw new TypeCastException("null cannot be cast to non-null type VH");
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    protected void setFullSpan(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        View view = holder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    public final View getViewByPosition(int position, int viewId) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(position)) == null) {
            return null;
        }
        return baseViewHolder.getViewOrNull(viewId);
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$addHeaderView$1 */
    final /* synthetic */ class C08871 extends MutablePropertyReference0 {
        C08871(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mHeaderLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMHeaderLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMHeaderLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mHeaderLayout = (LinearLayout) obj;
        }
    }

    public static /* synthetic */ int addHeaderView$default(BaseQuickAdapter baseQuickAdapter, View view, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addHeaderView");
        }
        if ((i3 & 2) != 0) {
            i = -1;
        }
        if ((i3 & 4) != 0) {
            i2 = 1;
        }
        return baseQuickAdapter.addHeaderView(view, i, i2);
    }

    public final int addHeaderView(View view, int index, int orientation) {
        int headerViewPosition;
        RecyclerView.LayoutParams layoutParams;
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.mHeaderLayout == null) {
            this.mHeaderLayout = new LinearLayout(view.getContext());
            LinearLayout linearLayout = this.mHeaderLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            linearLayout.setOrientation(orientation);
            LinearLayout linearLayout2 = this.mHeaderLayout;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            if (orientation == 1) {
                layoutParams = new RecyclerView.LayoutParams(-1, -2);
            } else {
                layoutParams = new RecyclerView.LayoutParams(-2, -1);
            }
            linearLayout2.setLayoutParams(layoutParams);
        }
        LinearLayout linearLayout3 = this.mHeaderLayout;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        int childCount = linearLayout3.getChildCount();
        if (index < 0 || index > childCount) {
            index = childCount;
        }
        LinearLayout linearLayout4 = this.mHeaderLayout;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        linearLayout4.addView(view, index);
        LinearLayout linearLayout5 = this.mHeaderLayout;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        if (linearLayout5.getChildCount() == 1 && (headerViewPosition = getHeaderViewPosition()) != -1) {
            notifyItemInserted(headerViewPosition);
        }
        return index;
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$setHeaderView$1 */
    final /* synthetic */ class C08951 extends MutablePropertyReference0 {
        C08951(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mHeaderLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMHeaderLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMHeaderLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mHeaderLayout = (LinearLayout) obj;
        }
    }

    public static /* synthetic */ int setHeaderView$default(BaseQuickAdapter baseQuickAdapter, View view, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHeaderView");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 1;
        }
        return baseQuickAdapter.setHeaderView(view, i, i2);
    }

    public final int setHeaderView(View view, int index, int orientation) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.mHeaderLayout != null) {
            LinearLayout linearLayout = this.mHeaderLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            if (linearLayout.getChildCount() > index) {
                LinearLayout linearLayout2 = this.mHeaderLayout;
                if (linearLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                }
                linearLayout2.removeViewAt(index);
                LinearLayout linearLayout3 = this.mHeaderLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                }
                linearLayout3.addView(view, index);
                return index;
            }
        }
        return addHeaderView(view, index, orientation);
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$hasHeaderLayout$1 */
    final /* synthetic */ class C08901 extends MutablePropertyReference0 {
        C08901(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mHeaderLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMHeaderLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMHeaderLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mHeaderLayout = (LinearLayout) obj;
        }
    }

    public final boolean hasHeaderLayout() {
        if (this.mHeaderLayout == null) {
            return false;
        }
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        }
        return linearLayout.getChildCount() > 0;
    }

    public final void removeHeaderView(View header) {
        int headerViewPosition;
        Intrinsics.checkParameterIsNotNull(header, "header");
        if (hasHeaderLayout()) {
            LinearLayout linearLayout = this.mHeaderLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            linearLayout.removeView(header);
            LinearLayout linearLayout2 = this.mHeaderLayout;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            if (linearLayout2.getChildCount() != 0 || (headerViewPosition = getHeaderViewPosition()) == -1) {
                return;
            }
            notifyItemRemoved(headerViewPosition);
        }
    }

    public final void removeAllHeaderView() {
        if (hasHeaderLayout()) {
            LinearLayout linearLayout = this.mHeaderLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
            }
            linearLayout.removeAllViews();
            int headerViewPosition = getHeaderViewPosition();
            if (headerViewPosition != -1) {
                notifyItemRemoved(headerViewPosition);
            }
        }
    }

    public final int getHeaderViewPosition() {
        return (!hasEmptyView() || this.headerWithEmptyEnable) ? 0 : -1;
    }

    public final int getHeaderLayoutCount() {
        return hasHeaderLayout() ? 1 : 0;
    }

    public final LinearLayout getHeaderLayout() {
        if (this.mHeaderLayout == null) {
            return null;
        }
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
        return linearLayout;
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$addFooterView$1 */
    final /* synthetic */ class C08861 extends MutablePropertyReference0 {
        C08861(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mFooterLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMFooterLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMFooterLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mFooterLayout = (LinearLayout) obj;
        }
    }

    public static /* synthetic */ int addFooterView$default(BaseQuickAdapter baseQuickAdapter, View view, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addFooterView");
        }
        if ((i3 & 2) != 0) {
            i = -1;
        }
        if ((i3 & 4) != 0) {
            i2 = 1;
        }
        return baseQuickAdapter.addFooterView(view, i, i2);
    }

    public final int addFooterView(View view, int index, int orientation) {
        int footerViewPosition;
        RecyclerView.LayoutParams layoutParams;
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.mFooterLayout == null) {
            this.mFooterLayout = new LinearLayout(view.getContext());
            LinearLayout linearLayout = this.mFooterLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            linearLayout.setOrientation(orientation);
            LinearLayout linearLayout2 = this.mFooterLayout;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            if (orientation == 1) {
                layoutParams = new RecyclerView.LayoutParams(-1, -2);
            } else {
                layoutParams = new RecyclerView.LayoutParams(-2, -1);
            }
            linearLayout2.setLayoutParams(layoutParams);
        }
        LinearLayout linearLayout3 = this.mFooterLayout;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        int childCount = linearLayout3.getChildCount();
        if (index < 0 || index > childCount) {
            index = childCount;
        }
        LinearLayout linearLayout4 = this.mFooterLayout;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        linearLayout4.addView(view, index);
        LinearLayout linearLayout5 = this.mFooterLayout;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        if (linearLayout5.getChildCount() == 1 && (footerViewPosition = getFooterViewPosition()) != -1) {
            notifyItemInserted(footerViewPosition);
        }
        return index;
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$setFooterView$1 */
    final /* synthetic */ class C08941 extends MutablePropertyReference0 {
        C08941(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mFooterLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMFooterLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMFooterLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mFooterLayout = (LinearLayout) obj;
        }
    }

    public static /* synthetic */ int setFooterView$default(BaseQuickAdapter baseQuickAdapter, View view, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFooterView");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 1;
        }
        return baseQuickAdapter.setFooterView(view, i, i2);
    }

    public final int setFooterView(View view, int index, int orientation) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.mFooterLayout != null) {
            LinearLayout linearLayout = this.mFooterLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            if (linearLayout.getChildCount() > index) {
                LinearLayout linearLayout2 = this.mFooterLayout;
                if (linearLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                }
                linearLayout2.removeViewAt(index);
                LinearLayout linearLayout3 = this.mFooterLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                }
                linearLayout3.addView(view, index);
                return index;
            }
        }
        return addFooterView(view, index, orientation);
    }

    public final void removeFooterView(View footer) {
        int footerViewPosition;
        Intrinsics.checkParameterIsNotNull(footer, "footer");
        if (hasFooterLayout()) {
            LinearLayout linearLayout = this.mFooterLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            linearLayout.removeView(footer);
            LinearLayout linearLayout2 = this.mFooterLayout;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            if (linearLayout2.getChildCount() != 0 || (footerViewPosition = getFooterViewPosition()) == -1) {
                return;
            }
            notifyItemRemoved(footerViewPosition);
        }
    }

    public final void removeAllFooterView() {
        if (hasFooterLayout()) {
            LinearLayout linearLayout = this.mFooterLayout;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
            }
            linearLayout.removeAllViews();
            int footerViewPosition = getFooterViewPosition();
            if (footerViewPosition != -1) {
                notifyItemRemoved(footerViewPosition);
            }
        }
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$hasFooterLayout$1 */
    final /* synthetic */ class C08891 extends MutablePropertyReference0 {
        C08891(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mFooterLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMFooterLayout()Landroid/widget/LinearLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMFooterLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mFooterLayout = (LinearLayout) obj;
        }
    }

    public final boolean hasFooterLayout() {
        if (this.mFooterLayout == null) {
            return false;
        }
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        }
        return linearLayout.getChildCount() > 0;
    }

    public final int getFooterViewPosition() {
        if (hasEmptyView()) {
            int i = 1;
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i = 2;
            }
            if (this.footerWithEmptyEnable) {
                return i;
            }
            return -1;
        }
        return getHeaderLayoutCount() + this.data.size();
    }

    public final int getFooterLayoutCount() {
        return hasFooterLayout() ? 1 : 0;
    }

    public final LinearLayout getFooterLayout() {
        if (this.mFooterLayout == null) {
            return null;
        }
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
        return linearLayout;
    }

    public final void setEmptyView(View emptyView) {
        boolean z;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.checkParameterIsNotNull(emptyView, "emptyView");
        int itemCount = getItemCount();
        int i = 0;
        if (this.mEmptyLayout == null) {
            this.mEmptyLayout = new FrameLayout(emptyView.getContext());
            FrameLayout frameLayout = this.mEmptyLayout;
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
            }
            ViewGroup.LayoutParams layoutParams2 = emptyView.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams = new ViewGroup.LayoutParams(layoutParams2.width, layoutParams2.height);
            } else {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            frameLayout.setLayoutParams(layoutParams);
            z = true;
        } else {
            ViewGroup.LayoutParams layoutParams3 = emptyView.getLayoutParams();
            if (layoutParams3 != null) {
                FrameLayout frameLayout2 = this.mEmptyLayout;
                if (frameLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                }
                ViewGroup.LayoutParams layoutParams4 = frameLayout2.getLayoutParams();
                layoutParams4.width = layoutParams3.width;
                layoutParams4.height = layoutParams3.height;
                FrameLayout frameLayout3 = this.mEmptyLayout;
                if (frameLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                }
                frameLayout3.setLayoutParams(layoutParams4);
            }
            z = false;
        }
        FrameLayout frameLayout4 = this.mEmptyLayout;
        if (frameLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        }
        frameLayout4.removeAllViews();
        FrameLayout frameLayout5 = this.mEmptyLayout;
        if (frameLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        }
        frameLayout5.addView(emptyView);
        this.isUseEmpty = true;
        if (z && hasEmptyView()) {
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i = 1;
            }
            if (getItemCount() > itemCount) {
                notifyItemInserted(i);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$setEmptyView$1 */
    final /* synthetic */ class C08931 extends MutablePropertyReference0 {
        C08931(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mEmptyLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMEmptyLayout()Landroid/widget/FrameLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMEmptyLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mEmptyLayout = (FrameLayout) obj;
        }
    }

    public final void setEmptyView(int layoutResId) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            View view = LayoutInflater.from(recyclerView.getContext()).inflate(layoutResId, (ViewGroup) recyclerView, false);
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            setEmptyView(view);
        }
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$removeEmptyView$1 */
    final /* synthetic */ class C08921 extends MutablePropertyReference0 {
        C08921(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mEmptyLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMEmptyLayout()Landroid/widget/FrameLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMEmptyLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mEmptyLayout = (FrameLayout) obj;
        }
    }

    public final void removeEmptyView() {
        if (this.mEmptyLayout != null) {
            FrameLayout frameLayout = this.mEmptyLayout;
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
            }
            frameLayout.removeAllViews();
        }
    }

    /* compiled from: BaseQuickAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapter$hasEmptyView$1 */
    final /* synthetic */ class C08881 extends MutablePropertyReference0 {
        C08881(BaseQuickAdapter baseQuickAdapter) {
            super(baseQuickAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
        public String getName() {
            return "mEmptyLayout";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getMEmptyLayout()Landroid/widget/FrameLayout;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return BaseQuickAdapter.access$getMEmptyLayout$p((BaseQuickAdapter) this.receiver);
        }

        @Override // kotlin.reflect.KMutableProperty0
        public void set(Object obj) {
            ((BaseQuickAdapter) this.receiver).mEmptyLayout = (FrameLayout) obj;
        }
    }

    public final boolean hasEmptyView() {
        if (this.mEmptyLayout != null) {
            FrameLayout frameLayout = this.mEmptyLayout;
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
            }
            if (frameLayout.getChildCount() != 0 && this.isUseEmpty) {
                return this.data.isEmpty();
            }
            return false;
        }
        return false;
    }

    public final FrameLayout getEmptyLayout() {
        if (this.mEmptyLayout == null) {
            return null;
        }
        FrameLayout frameLayout = this.mEmptyLayout;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
        return frameLayout;
    }

    private final void addAnimation(RecyclerView.ViewHolder holder) {
        if (this.animationEnable) {
            if (!this.isAnimationFirstOnly || holder.getLayoutPosition() > this.mLastPosition) {
                AlphaInAnimation alphaInAnimation = this.adapterAnimation;
                if (alphaInAnimation == null) {
                    alphaInAnimation = new AlphaInAnimation(0.0f, 1, null);
                }
                View view = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
                for (Animator animator : alphaInAnimation.animators(view)) {
                    startAnim(animator, holder.getLayoutPosition());
                }
                this.mLastPosition = holder.getLayoutPosition();
            }
        }
    }

    protected void startAnim(Animator anim, int index) {
        Intrinsics.checkParameterIsNotNull(anim, "anim");
        anim.start();
    }

    public final void setAnimationWithDefault(AnimationType animationType) {
        AlphaInAnimation alphaInAnimation;
        Intrinsics.checkParameterIsNotNull(animationType, "animationType");
        int i = WhenMappings.$EnumSwitchMapping$0[animationType.ordinal()];
        DefaultConstructorMarker defaultConstructorMarker = null;
        float f = 0.0f;
        int i2 = 1;
        if (i == 1) {
            alphaInAnimation = new AlphaInAnimation(f, i2, defaultConstructorMarker);
        } else if (i == 2) {
            alphaInAnimation = new ScaleInAnimation(f, i2, defaultConstructorMarker);
        } else if (i == 3) {
            alphaInAnimation = new SlideInBottomAnimation();
        } else if (i == 4) {
            alphaInAnimation = new SlideInLeftAnimation();
        } else {
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            alphaInAnimation = new SlideInRightAnimation();
        }
        setAdapterAnimation(alphaInAnimation);
    }

    @Deprecated(message = "Please use setNewInstance(), This method will be removed in the next version", replaceWith = @ReplaceWith(expression = "setNewInstance(data)", imports = {}))
    public void setNewData(List<T> data) {
        setNewInstance(data);
    }

    public void setNewInstance(List<T> list) {
        if (list == this.data) {
            return;
        }
        if (list == null) {
            list = new ArrayList();
        }
        this.data = list;
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.reset$com_github_CymChad_brvah();
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
        BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
        if (baseLoadMoreModule2 != null) {
            baseLoadMoreModule2.checkDisableLoadMoreIfNotFullPage();
        }
    }

    @Deprecated(message = "Please use setData()", replaceWith = @ReplaceWith(expression = "setData(newData)", imports = {}))
    public void replaceData(Collection<? extends T> newData) {
        Intrinsics.checkParameterIsNotNull(newData, "newData");
        setList(newData);
    }

    public void setList(Collection<? extends T> list) {
        List<T> list2 = this.data;
        if (list != list2) {
            list2.clear();
            if (!(list == null || list.isEmpty())) {
                this.data.addAll(list);
            }
        } else {
            if (!(list == null || list.isEmpty())) {
                ArrayList arrayList = new ArrayList(list);
                this.data.clear();
                this.data.addAll(arrayList);
            } else {
                this.data.clear();
            }
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.reset$com_github_CymChad_brvah();
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
        BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
        if (baseLoadMoreModule2 != null) {
            baseLoadMoreModule2.checkDisableLoadMoreIfNotFullPage();
        }
    }

    public void setData(int index, T data) {
        if (index >= this.data.size()) {
            return;
        }
        this.data.set(index, data);
        notifyItemChanged(index + getHeaderLayoutCount());
    }

    public void addData(int position, T data) {
        this.data.add(position, data);
        notifyItemInserted(position + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public void addData(T data) {
        this.data.add(data);
        notifyItemInserted(this.data.size() + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public void addData(int position, Collection<? extends T> newData) {
        Intrinsics.checkParameterIsNotNull(newData, "newData");
        this.data.addAll(position, newData);
        notifyItemRangeInserted(position + getHeaderLayoutCount(), newData.size());
        compatibilityDataSizeChanged(newData.size());
    }

    public void addData(Collection<? extends T> newData) {
        Intrinsics.checkParameterIsNotNull(newData, "newData");
        this.data.addAll(newData);
        notifyItemRangeInserted((this.data.size() - newData.size()) + getHeaderLayoutCount(), newData.size());
        compatibilityDataSizeChanged(newData.size());
    }

    @Deprecated(message = "Please use removeAt()", replaceWith = @ReplaceWith(expression = "removeAt(position)", imports = {}))
    public void remove(int position) {
        removeAt(position);
    }

    public void removeAt(int position) {
        if (position >= this.data.size()) {
            return;
        }
        this.data.remove(position);
        int headerLayoutCount = position + getHeaderLayoutCount();
        notifyItemRemoved(headerLayoutCount);
        compatibilityDataSizeChanged(0);
        notifyItemRangeChanged(headerLayoutCount, this.data.size() - headerLayoutCount);
    }

    public void remove(T data) {
        int iIndexOf = this.data.indexOf(data);
        if (iIndexOf == -1) {
            return;
        }
        removeAt(iIndexOf);
    }

    protected final void compatibilityDataSizeChanged(int size) {
        if (this.data.size() == size) {
            notifyDataSetChanged();
        }
    }

    public final void setDiffCallback(DiffUtil.ItemCallback<T> diffCallback) {
        Intrinsics.checkParameterIsNotNull(diffCallback, "diffCallback");
        setDiffConfig(new BrvahAsyncDifferConfig.Builder(diffCallback).build());
    }

    public final void setDiffConfig(BrvahAsyncDifferConfig<T> config) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.mDiffHelper = new BrvahAsyncDiffer<>(this, config);
    }

    @Deprecated(message = "User getDiffer()", replaceWith = @ReplaceWith(expression = "getDiffer()", imports = {}))
    public final BrvahAsyncDiffer<T> getDiffHelper() {
        return getDiffer();
    }

    public final BrvahAsyncDiffer<T> getDiffer() {
        BrvahAsyncDiffer<T> brvahAsyncDiffer = this.mDiffHelper;
        if (brvahAsyncDiffer == null) {
            throw new IllegalStateException("Please use setDiffCallback() or setDiffConfig() first!".toString());
        }
        if (brvahAsyncDiffer == null) {
            Intrinsics.throwNpe();
        }
        return brvahAsyncDiffer;
    }

    public void setDiffNewData(List<T> list) {
        if (hasEmptyView()) {
            setNewInstance(list);
            return;
        }
        BrvahAsyncDiffer<T> brvahAsyncDiffer = this.mDiffHelper;
        if (brvahAsyncDiffer != null) {
            BrvahAsyncDiffer.submitList$default(brvahAsyncDiffer, list, null, 2, null);
        }
    }

    public void setDiffNewData(DiffUtil.DiffResult diffResult, List<T> list) {
        Intrinsics.checkParameterIsNotNull(diffResult, "diffResult");
        Intrinsics.checkParameterIsNotNull(list, "list");
        if (hasEmptyView()) {
            setNewInstance(list);
        } else {
            diffResult.dispatchUpdatesTo(new BrvahListUpdateCallback(this));
            this.data = list;
        }
    }

    @Override // com.chad.library.adapter.base.listener.BaseListenerImp
    public void setGridSpanSizeLookup(GridSpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    @Override // com.chad.library.adapter.base.listener.BaseListenerImp
    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mOnItemClickListener = listener;
    }

    @Override // com.chad.library.adapter.base.listener.BaseListenerImp
    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        this.mOnItemLongClickListener = listener;
    }

    @Override // com.chad.library.adapter.base.listener.BaseListenerImp
    public void setOnItemChildClickListener(OnItemChildClickListener listener) {
        this.mOnItemChildClickListener = listener;
    }

    @Override // com.chad.library.adapter.base.listener.BaseListenerImp
    public void setOnItemChildLongClickListener(OnItemChildLongClickListener listener) {
        this.mOnItemChildLongClickListener = listener;
    }

    /* renamed from: getOnItemClickListener, reason: from getter */
    public final OnItemClickListener getMOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    /* renamed from: getOnItemLongClickListener, reason: from getter */
    public final OnItemLongClickListener getMOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    /* renamed from: getOnItemChildClickListener, reason: from getter */
    public final OnItemChildClickListener getMOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    /* renamed from: getOnItemChildLongClickListener, reason: from getter */
    public final OnItemChildLongClickListener getMOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }
}
