package kotlin.text;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.Grouping;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.SlidingWindowKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* compiled from: _Strings.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000Ü\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u001f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a!\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\u0010\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u0002\u001a\u0010\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n*\u00020\u0002\u001aE\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\f\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e*\u00020\u00022\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u00100\u0004H\u0086\b\u001a3\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00050\f\"\u0004\b\u0000\u0010\r*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u0004H\u0086\b\u001aM\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\f\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0086\b\u001aN\u0010\u0014\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\r\"\u0018\b\u0001\u0010\u0015*\u0012\u0012\u0006\b\u0000\u0012\u0002H\r\u0012\u0006\b\u0000\u0012\u00020\u00050\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u0004H\u0086\b¢\u0006\u0002\u0010\u0018\u001ah\u0010\u0014\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e\"\u0018\b\u0002\u0010\u0015*\u0012\u0012\u0006\b\u0000\u0012\u0002H\r\u0012\u0006\b\u0000\u0012\u0002H\u000e0\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0086\b¢\u0006\u0002\u0010\u0019\u001a`\u0010\u001a\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e\"\u0018\b\u0002\u0010\u0015*\u0012\u0012\u0006\b\u0000\u0012\u0002H\r\u0012\u0006\b\u0000\u0012\u0002H\u000e0\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u00100\u0004H\u0086\b¢\u0006\u0002\u0010\u0018\u001a3\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\f\"\u0004\b\u0000\u0010\u000e*\u00020\u00022\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0087\b\u001aN\u0010\u001d\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\u000e\"\u0018\b\u0001\u0010\u0015*\u0012\u0012\u0006\b\u0000\u0012\u00020\u0005\u0012\u0006\b\u0000\u0012\u0002H\u000e0\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0087\b¢\u0006\u0002\u0010\u0018\u001a\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f*\u00020\u00022\u0006\u0010!\u001a\u00020\"H\u0007\u001a4\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H#0\u0004H\u0007\u001a\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020 0\n*\u00020\u00022\u0006\u0010!\u001a\u00020\"H\u0007\u001a4\u0010$\u001a\b\u0012\u0004\u0012\u0002H#0\n\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H#0\u0004H\u0007\u001a\r\u0010%\u001a\u00020\"*\u00020\u0002H\u0087\b\u001a!\u0010%\u001a\u00020\"*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\u0012\u0010&\u001a\u00020\u0002*\u00020\u00022\u0006\u0010'\u001a\u00020\"\u001a\u0012\u0010&\u001a\u00020 *\u00020 2\u0006\u0010'\u001a\u00020\"\u001a\u0012\u0010(\u001a\u00020\u0002*\u00020\u00022\u0006\u0010'\u001a\u00020\"\u001a\u0012\u0010(\u001a\u00020 *\u00020 2\u0006\u0010'\u001a\u00020\"\u001a!\u0010)\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u0010)\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u0010*\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u0010*\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a)\u0010+\u001a\u00020\u0005*\u00020\u00022\u0006\u0010,\u001a\u00020\"2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00050\u0004H\u0087\b\u001a\u001c\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010,\u001a\u00020\"H\u0087\b¢\u0006\u0002\u0010/\u001a!\u00100\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u00100\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a6\u00101\u001a\u00020\u0002*\u00020\u00022'\u0010\u0003\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000102H\u0086\b\u001a6\u00101\u001a\u00020 *\u00020 2'\u0010\u0003\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000102H\u0086\b\u001aQ\u00105\u001a\u0002H6\"\f\b\u0000\u00106*\u000607j\u0002`8*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62'\u0010\u0003\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000102H\u0086\b¢\u0006\u0002\u00109\u001a!\u0010:\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u0010:\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a<\u0010;\u001a\u0002H6\"\f\b\u0000\u00106*\u000607j\u0002`8*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b¢\u0006\u0002\u0010<\u001a<\u0010=\u001a\u0002H6\"\f\b\u0000\u00106*\u000607j\u0002`8*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b¢\u0006\u0002\u0010<\u001a(\u0010>\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0087\b¢\u0006\u0002\u0010?\u001a(\u0010@\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0087\b¢\u0006\u0002\u0010?\u001a\n\u0010A\u001a\u00020\u0005*\u00020\u0002\u001a!\u0010A\u001a\u00020\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\u0011\u0010B\u001a\u0004\u0018\u00010\u0005*\u00020\u0002¢\u0006\u0002\u0010C\u001a(\u0010B\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b¢\u0006\u0002\u0010?\u001a3\u0010D\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H#0\b0\u0004H\u0086\b\u001aL\u0010E\u001a\u0002H6\"\u0004\b\u0000\u0010#\"\u0010\b\u0001\u00106*\n\u0012\u0006\b\u0000\u0012\u0002H#0F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H#0\b0\u0004H\u0086\b¢\u0006\u0002\u0010G\u001aI\u0010H\u001a\u0002H#\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2'\u0010J\u001a#\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#02H\u0086\b¢\u0006\u0002\u0010L\u001a^\u0010M\u001a\u0002H#\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0NH\u0086\b¢\u0006\u0002\u0010O\u001aI\u0010P\u001a\u0002H#\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2'\u0010J\u001a#\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u0002H#02H\u0086\b¢\u0006\u0002\u0010L\u001a^\u0010Q\u001a\u0002H#\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u0002H#0NH\u0086\b¢\u0006\u0002\u0010O\u001a!\u0010R\u001a\u00020S*\u00020\u00022\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020S0\u0004H\u0086\b\u001a6\u0010U\u001a\u00020S*\u00020\u00022'\u0010T\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020S02H\u0086\b\u001a)\u0010V\u001a\u00020\u0005*\u00020\u00022\u0006\u0010,\u001a\u00020\"2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00050\u0004H\u0087\b\u001a\u0019\u0010W\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010,\u001a\u00020\"¢\u0006\u0002\u0010/\u001a9\u0010X\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001f0\f\"\u0004\b\u0000\u0010\r*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u0004H\u0086\b\u001aS\u0010X\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u001f0\f\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0086\b\u001aR\u0010Y\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\r\"\u001c\b\u0001\u0010\u0015*\u0016\u0012\u0006\b\u0000\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050Z0\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u0004H\u0086\b¢\u0006\u0002\u0010\u0018\u001al\u0010Y\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\u000e\"\u001c\b\u0002\u0010\u0015*\u0016\u0012\u0006\b\u0000\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0Z0\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0086\b¢\u0006\u0002\u0010\u0019\u001a5\u0010[\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\\\"\u0004\b\u0000\u0010\r*\u00020\u00022\u0014\b\u0004\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\r0\u0004H\u0087\b\u001a!\u0010]\u001a\u00020\"*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a!\u0010^\u001a\u00020\"*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\n\u0010_\u001a\u00020\u0005*\u00020\u0002\u001a!\u0010_\u001a\u00020\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\u0011\u0010`\u001a\u0004\u0018\u00010\u0005*\u00020\u0002¢\u0006\u0002\u0010C\u001a(\u0010`\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b¢\u0006\u0002\u0010?\u001a-\u0010a\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0\u0004H\u0086\b\u001aB\u0010b\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022'\u0010\u000f\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#02H\u0086\b\u001aH\u0010c\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\b\b\u0000\u0010#*\u00020d*\u00020\u00022)\u0010\u000f\u001a%\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u0001H#02H\u0086\b\u001aa\u0010e\u001a\u0002H6\"\b\b\u0000\u0010#*\u00020d\"\u0010\b\u0001\u00106*\n\u0012\u0006\b\u0000\u0012\u0002H#0F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62)\u0010\u000f\u001a%\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u0001H#02H\u0086\b¢\u0006\u0002\u0010f\u001a[\u0010g\u001a\u0002H6\"\u0004\b\u0000\u0010#\"\u0010\b\u0001\u00106*\n\u0012\u0006\b\u0000\u0012\u0002H#0F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62'\u0010\u000f\u001a#\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#02H\u0086\b¢\u0006\u0002\u0010f\u001a3\u0010h\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\b\b\u0000\u0010#*\u00020d*\u00020\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u0001H#0\u0004H\u0086\b\u001aL\u0010i\u001a\u0002H6\"\b\b\u0000\u0010#*\u00020d\"\u0010\b\u0001\u00106*\n\u0012\u0006\b\u0000\u0012\u0002H#0F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u0001H#0\u0004H\u0086\b¢\u0006\u0002\u0010G\u001aF\u0010j\u001a\u0002H6\"\u0004\b\u0000\u0010#\"\u0010\b\u0001\u00106*\n\u0012\u0006\b\u0000\u0012\u0002H#0F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H62\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0\u0004H\u0086\b¢\u0006\u0002\u0010G\u001a\u0011\u0010k\u001a\u0004\u0018\u00010\u0005*\u00020\u0002¢\u0006\u0002\u0010C\u001a8\u0010l\u001a\u0004\u0018\u00010\u0005\"\u000e\b\u0000\u0010#*\b\u0012\u0004\u0012\u0002H#0m*\u00020\u00022\u0012\u0010n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0\u0004H\u0086\b¢\u0006\u0002\u0010?\u001a-\u0010o\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u001a\u0010p\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00050qj\n\u0012\u0006\b\u0000\u0012\u00020\u0005`r¢\u0006\u0002\u0010s\u001a\u0011\u0010t\u001a\u0004\u0018\u00010\u0005*\u00020\u0002¢\u0006\u0002\u0010C\u001a8\u0010u\u001a\u0004\u0018\u00010\u0005\"\u000e\b\u0000\u0010#*\b\u0012\u0004\u0012\u0002H#0m*\u00020\u00022\u0012\u0010n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0\u0004H\u0086\b¢\u0006\u0002\u0010?\u001a-\u0010v\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u001a\u0010p\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00050qj\n\u0012\u0006\b\u0000\u0012\u00020\u0005`r¢\u0006\u0002\u0010s\u001a\n\u0010w\u001a\u00020\u0001*\u00020\u0002\u001a!\u0010w\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a0\u0010x\u001a\u0002Hy\"\b\b\u0000\u0010y*\u00020\u0002*\u0002Hy2\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020S0\u0004H\u0087\b¢\u0006\u0002\u0010z\u001a-\u0010{\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0010*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a-\u0010{\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u0010*\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\r\u0010|\u001a\u00020\u0005*\u00020\u0002H\u0087\b\u001a\u0014\u0010|\u001a\u00020\u0005*\u00020\u00022\u0006\u0010|\u001a\u00020}H\u0007\u001a\u0014\u0010~\u001a\u0004\u0018\u00010\u0005*\u00020\u0002H\u0087\b¢\u0006\u0002\u0010C\u001a\u001b\u0010~\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010|\u001a\u00020}H\u0007¢\u0006\u0002\u0010\u007f\u001a7\u0010\u0080\u0001\u001a\u00020\u0005*\u00020\u00022'\u0010J\u001a#\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000502H\u0086\b\u001aL\u0010\u0081\u0001\u001a\u00020\u0005*\u00020\u00022<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050NH\u0086\b\u001a?\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0005*\u00020\u00022'\u0010J\u001a#\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000502H\u0087\b¢\u0006\u0003\u0010\u0083\u0001\u001a7\u0010\u0084\u0001\u001a\u00020\u0005*\u00020\u00022'\u0010J\u001a#\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u000502H\u0086\b\u001aL\u0010\u0085\u0001\u001a\u00020\u0005*\u00020\u00022<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u00050NH\u0086\b\u001a?\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0005*\u00020\u00022'\u0010J\u001a#\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u000502H\u0087\b¢\u0006\u0003\u0010\u0083\u0001\u001a\u000b\u0010\u0087\u0001\u001a\u00020\u0002*\u00020\u0002\u001a\u000e\u0010\u0087\u0001\u001a\u00020 *\u00020 H\u0087\b\u001aQ\u0010\u0088\u0001\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2'\u0010J\u001a#\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#02H\u0087\b¢\u0006\u0003\u0010\u0089\u0001\u001af\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010I\u001a\u0002H#2<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0013\u0012\u0011H#¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H#0NH\u0087\b¢\u0006\u0003\u0010\u008b\u0001\u001a=\u0010\u008c\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u001f*\u00020\u00022'\u0010J\u001a#\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000502H\u0087\b\u001aR\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u001f*\u00020\u00022<\u0010J\u001a8\u0012\u0013\u0012\u00110\"¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050NH\u0087\b\u001a\u000b\u0010\u008e\u0001\u001a\u00020\u0005*\u00020\u0002\u001a\"\u0010\u008e\u0001\u001a\u00020\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\u0012\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0005*\u00020\u0002¢\u0006\u0002\u0010C\u001a)\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b¢\u0006\u0002\u0010?\u001a\u001a\u0010\u0090\u0001\u001a\u00020\u0002*\u00020\u00022\r\u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\"0\b\u001a\u0015\u0010\u0090\u0001\u001a\u00020\u0002*\u00020\u00022\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001\u001a\u001d\u0010\u0090\u0001\u001a\u00020 *\u00020 2\r\u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\"0\bH\u0087\b\u001a\u0015\u0010\u0090\u0001\u001a\u00020 *\u00020 2\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001\u001a\"\u0010\u0093\u0001\u001a\u00020\"*\u00020\u00022\u0012\u0010n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0\u0004H\u0086\b\u001a$\u0010\u0094\u0001\u001a\u00030\u0095\u0001*\u00020\u00022\u0013\u0010n\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u00030\u0095\u00010\u0004H\u0086\b\u001a\u0013\u0010\u0096\u0001\u001a\u00020\u0002*\u00020\u00022\u0006\u0010'\u001a\u00020\"\u001a\u0013\u0010\u0096\u0001\u001a\u00020 *\u00020 2\u0006\u0010'\u001a\u00020\"\u001a\u0013\u0010\u0097\u0001\u001a\u00020\u0002*\u00020\u00022\u0006\u0010'\u001a\u00020\"\u001a\u0013\u0010\u0097\u0001\u001a\u00020 *\u00020 2\u0006\u0010'\u001a\u00020\"\u001a\"\u0010\u0098\u0001\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\"\u0010\u0098\u0001\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\"\u0010\u0099\u0001\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a\"\u0010\u0099\u0001\u001a\u00020 *\u00020 2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\b\u001a+\u0010\u009a\u0001\u001a\u0002H6\"\u0010\b\u0000\u00106*\n\u0012\u0006\b\u0000\u0012\u00020\u00050F*\u00020\u00022\u0006\u0010\u0017\u001a\u0002H6¢\u0006\u0003\u0010\u009b\u0001\u001a\u001d\u0010\u009c\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u00050\u009d\u0001j\t\u0012\u0004\u0012\u00020\u0005`\u009e\u0001*\u00020\u0002\u001a\u0011\u0010\u009f\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u001f*\u00020\u0002\u001a\u0011\u0010 \u0001\u001a\b\u0012\u0004\u0012\u00020\u00050Z*\u00020\u0002\u001a\u0012\u0010¡\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050¢\u0001*\u00020\u0002\u001a1\u0010£\u0001\u001a\b\u0012\u0004\u0012\u00020 0\u001f*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\t\b\u0002\u0010¤\u0001\u001a\u00020\"2\t\b\u0002\u0010¥\u0001\u001a\u00020\u0001H\u0007\u001aK\u0010£\u0001\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\t\b\u0002\u0010¤\u0001\u001a\u00020\"2\t\b\u0002\u0010¥\u0001\u001a\u00020\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H#0\u0004H\u0007\u001a1\u0010¦\u0001\u001a\b\u0012\u0004\u0012\u00020 0\n*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\t\b\u0002\u0010¤\u0001\u001a\u00020\"2\t\b\u0002\u0010¥\u0001\u001a\u00020\u0001H\u0007\u001aK\u0010¦\u0001\u001a\b\u0012\u0004\u0012\u0002H#0\n\"\u0004\b\u0000\u0010#*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\t\b\u0002\u0010¤\u0001\u001a\u00020\"2\t\b\u0002\u0010¥\u0001\u001a\u00020\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H#0\u0004H\u0007\u001a\u0018\u0010§\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00050¨\u00010\b*\u00020\u0002\u001a)\u0010©\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00100\u001f*\u00020\u00022\u0007\u0010ª\u0001\u001a\u00020\u0002H\u0086\u0004\u001a]\u0010©\u0001\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u001f\"\u0004\b\u0000\u0010\u000e*\u00020\u00022\u0007\u0010ª\u0001\u001a\u00020\u000228\u0010\u000f\u001a4\u0012\u0014\u0012\u00120\u0005¢\u0006\r\b3\u0012\t\b4\u0012\u0005\b\b(«\u0001\u0012\u0014\u0012\u00120\u0005¢\u0006\r\b3\u0012\t\b4\u0012\u0005\b\b(¬\u0001\u0012\u0004\u0012\u0002H\u000e02H\u0086\b\u001a\u001f\u0010\u00ad\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00100\u001f*\u00020\u0002H\u0007\u001aT\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u0002H#0\u001f\"\u0004\b\u0000\u0010#*\u00020\u000228\u0010\u000f\u001a4\u0012\u0014\u0012\u00120\u0005¢\u0006\r\b3\u0012\t\b4\u0012\u0005\b\b(«\u0001\u0012\u0014\u0012\u00120\u0005¢\u0006\r\b3\u0012\t\b4\u0012\u0005\b\b(¬\u0001\u0012\u0004\u0012\u0002H#02H\u0087\b¨\u0006®\u0001"}, m849d2 = {"all", "", "", "predicate", "Lkotlin/Function1;", "", "any", "asIterable", "", "asSequence", "Lkotlin/sequences/Sequence;", "associate", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "transform", "Lkotlin/Pair;", "associateBy", "keySelector", "valueTransform", "associateByTo", "M", "", "destination", "(Ljava/lang/CharSequence;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "(Ljava/lang/CharSequence;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "associateTo", "associateWith", "valueSelector", "associateWithTo", "chunked", "", "", "size", "", "R", "chunkedSequence", "count", "drop", "n", "dropLast", "dropLastWhile", "dropWhile", "elementAtOrElse", "index", "defaultValue", "elementAtOrNull", "(Ljava/lang/CharSequence;I)Ljava/lang/Character;", "filter", "filterIndexed", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "filterIndexedTo", "C", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lkotlin/jvm/functions/Function2;)Ljava/lang/Appendable;", "filterNot", "filterNotTo", "(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;", "filterTo", "find", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Character;", "findLast", "first", "firstOrNull", "(Ljava/lang/CharSequence;)Ljava/lang/Character;", "flatMap", "flatMapTo", "", "(Ljava/lang/CharSequence;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;", "fold", "initial", "operation", "acc", "(Ljava/lang/CharSequence;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "foldIndexed", "Lkotlin/Function3;", "(Ljava/lang/CharSequence;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "foldRight", "foldRightIndexed", "forEach", "", "action", "forEachIndexed", "getOrElse", "getOrNull", "groupBy", "groupByTo", "", "groupingBy", "Lkotlin/collections/Grouping;", "indexOfFirst", "indexOfLast", "last", "lastOrNull", "map", "mapIndexed", "mapIndexedNotNull", "", "mapIndexedNotNullTo", "(Ljava/lang/CharSequence;Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;", "mapIndexedTo", "mapNotNull", "mapNotNullTo", "mapTo", "max", "maxBy", "", "selector", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "(Ljava/lang/CharSequence;Ljava/util/Comparator;)Ljava/lang/Character;", "min", "minBy", "minWith", "none", "onEach", ExifInterface.LATITUDE_SOUTH, "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/CharSequence;", "partition", "random", "Lkotlin/random/Random;", "randomOrNull", "(Ljava/lang/CharSequence;Lkotlin/random/Random;)Ljava/lang/Character;", "reduce", "reduceIndexed", "reduceOrNull", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)Ljava/lang/Character;", "reduceRight", "reduceRightIndexed", "reduceRightOrNull", "reversed", "scan", "(Ljava/lang/CharSequence;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "scanIndexed", "(Ljava/lang/CharSequence;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/util/List;", "scanReduce", "scanReduceIndexed", "single", "singleOrNull", "slice", "indices", "Lkotlin/ranges/IntRange;", "sumBy", "sumByDouble", "", "take", "takeLast", "takeLastWhile", "takeWhile", "toCollection", "(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/util/Collection;", "toHashSet", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "toList", "toMutableList", "toSet", "", "windowed", "step", "partialWindows", "windowedSequence", "withIndex", "Lkotlin/collections/IndexedValue;", "zip", "other", "a", "b", "zipWithNext", "kotlin-stdlib"}, m850k = 5, m851mv = {1, 1, 16}, m853xi = 1, m854xs = "kotlin/text/StringsKt")
/* loaded from: classes2.dex */
class StringsKt___StringsKt extends StringsKt___StringsJvmKt {
    private static final char elementAtOrElse(CharSequence charSequence, int i, Function1<? super Integer, Character> function1) {
        return (i < 0 || i > StringsKt.getLastIndex(charSequence)) ? function1.invoke(Integer.valueOf(i)).charValue() : charSequence.charAt(i);
    }

    private static final Character elementAtOrNull(CharSequence charSequence, int i) {
        return StringsKt.getOrNull(charSequence, i);
    }

    public static final char first(CharSequence first) {
        Intrinsics.checkParameterIsNotNull(first, "$this$first");
        if (first.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return first.charAt(0);
    }

    public static final char first(CharSequence first, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(first, "$this$first");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < first.length(); i++) {
            char cCharAt = first.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                return cCharAt;
            }
        }
        throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
    }

    public static final Character firstOrNull(CharSequence firstOrNull) {
        Intrinsics.checkParameterIsNotNull(firstOrNull, "$this$firstOrNull");
        if (firstOrNull.length() == 0) {
            return null;
        }
        return Character.valueOf(firstOrNull.charAt(0));
    }

    public static final Character firstOrNull(CharSequence firstOrNull, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(firstOrNull, "$this$firstOrNull");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < firstOrNull.length(); i++) {
            char cCharAt = firstOrNull.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                return Character.valueOf(cCharAt);
            }
        }
        return null;
    }

    private static final char getOrElse(CharSequence charSequence, int i, Function1<? super Integer, Character> function1) {
        return (i < 0 || i > StringsKt.getLastIndex(charSequence)) ? function1.invoke(Integer.valueOf(i)).charValue() : charSequence.charAt(i);
    }

    public static final Character getOrNull(CharSequence getOrNull, int i) {
        Intrinsics.checkParameterIsNotNull(getOrNull, "$this$getOrNull");
        if (i < 0 || i > StringsKt.getLastIndex(getOrNull)) {
            return null;
        }
        return Character.valueOf(getOrNull.charAt(i));
    }

    public static final int indexOfFirst(CharSequence indexOfFirst, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(indexOfFirst, "$this$indexOfFirst");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = indexOfFirst.length();
        for (int i = 0; i < length; i++) {
            if (predicate.invoke(Character.valueOf(indexOfFirst.charAt(i))).booleanValue()) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfLast(CharSequence indexOfLast, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(indexOfLast, "$this$indexOfLast");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int length = indexOfLast.length() - 1; length >= 0; length--) {
            if (predicate.invoke(Character.valueOf(indexOfLast.charAt(length))).booleanValue()) {
                return length;
            }
        }
        return -1;
    }

    public static final char last(CharSequence last) {
        Intrinsics.checkParameterIsNotNull(last, "$this$last");
        if (last.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return last.charAt(StringsKt.getLastIndex(last));
    }

    public static final char last(CharSequence last, Function1<? super Character, Boolean> predicate) {
        char cCharAt;
        Intrinsics.checkParameterIsNotNull(last, "$this$last");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = last.length();
        do {
            length--;
            if (length >= 0) {
                cCharAt = last.charAt(length);
            } else {
                throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
            }
        } while (!predicate.invoke(Character.valueOf(cCharAt)).booleanValue());
        return cCharAt;
    }

    public static final Character lastOrNull(CharSequence lastOrNull) {
        Intrinsics.checkParameterIsNotNull(lastOrNull, "$this$lastOrNull");
        if (lastOrNull.length() == 0) {
            return null;
        }
        return Character.valueOf(lastOrNull.charAt(lastOrNull.length() - 1));
    }

    public static final Character lastOrNull(CharSequence lastOrNull, Function1<? super Character, Boolean> predicate) {
        char cCharAt;
        Intrinsics.checkParameterIsNotNull(lastOrNull, "$this$lastOrNull");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = lastOrNull.length();
        do {
            length--;
            if (length < 0) {
                return null;
            }
            cCharAt = lastOrNull.charAt(length);
        } while (!predicate.invoke(Character.valueOf(cCharAt)).booleanValue());
        return Character.valueOf(cCharAt);
    }

    private static final char random(CharSequence charSequence) {
        return StringsKt.random(charSequence, Random.INSTANCE);
    }

    public static final char random(CharSequence random, Random random2) {
        Intrinsics.checkParameterIsNotNull(random, "$this$random");
        Intrinsics.checkParameterIsNotNull(random2, "random");
        if (random.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return random.charAt(random2.nextInt(random.length()));
    }

    private static final Character randomOrNull(CharSequence charSequence) {
        return StringsKt.randomOrNull(charSequence, Random.INSTANCE);
    }

    public static final Character randomOrNull(CharSequence randomOrNull, Random random) {
        Intrinsics.checkParameterIsNotNull(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (randomOrNull.length() == 0) {
            return null;
        }
        return Character.valueOf(randomOrNull.charAt(random.nextInt(randomOrNull.length())));
    }

    public static final char single(CharSequence single) {
        Intrinsics.checkParameterIsNotNull(single, "$this$single");
        int length = single.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return single.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    public static final char single(CharSequence single, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(single, "$this$single");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        Character chValueOf = (Character) null;
        boolean z = false;
        for (int i = 0; i < single.length(); i++) {
            char cCharAt = single.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                if (z) {
                    throw new IllegalArgumentException("Char sequence contains more than one matching element.");
                }
                chValueOf = Character.valueOf(cCharAt);
                z = true;
            }
        }
        if (!z) {
            throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
        }
        if (chValueOf != null) {
            return chValueOf.charValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Char");
    }

    public static final Character singleOrNull(CharSequence singleOrNull) {
        Intrinsics.checkParameterIsNotNull(singleOrNull, "$this$singleOrNull");
        if (singleOrNull.length() == 1) {
            return Character.valueOf(singleOrNull.charAt(0));
        }
        return null;
    }

    public static final Character singleOrNull(CharSequence singleOrNull, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(singleOrNull, "$this$singleOrNull");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        Character chValueOf = (Character) null;
        boolean z = false;
        for (int i = 0; i < singleOrNull.length(); i++) {
            char cCharAt = singleOrNull.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                if (z) {
                    return null;
                }
                chValueOf = Character.valueOf(cCharAt);
                z = true;
            }
        }
        if (z) {
            return chValueOf;
        }
        return null;
    }

    public static final CharSequence drop(CharSequence drop, int i) {
        Intrinsics.checkParameterIsNotNull(drop, "$this$drop");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        return drop.subSequence(RangesKt.coerceAtMost(i, drop.length()), drop.length());
    }

    public static final String drop(String drop, int i) {
        Intrinsics.checkParameterIsNotNull(drop, "$this$drop");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        String strSubstring = drop.substring(RangesKt.coerceAtMost(i, drop.length()));
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final CharSequence dropLast(CharSequence dropLast, int i) {
        Intrinsics.checkParameterIsNotNull(dropLast, "$this$dropLast");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        return StringsKt.take(dropLast, RangesKt.coerceAtLeast(dropLast.length() - i, 0));
    }

    public static final String dropLast(String dropLast, int i) {
        Intrinsics.checkParameterIsNotNull(dropLast, "$this$dropLast");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        return StringsKt.take(dropLast, RangesKt.coerceAtLeast(dropLast.length() - i, 0));
    }

    public static final CharSequence dropLastWhile(CharSequence dropLastWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(dropLastWhile, "$this$dropLastWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int lastIndex = StringsKt.getLastIndex(dropLastWhile); lastIndex >= 0; lastIndex--) {
            if (!predicate.invoke(Character.valueOf(dropLastWhile.charAt(lastIndex))).booleanValue()) {
                return dropLastWhile.subSequence(0, lastIndex + 1);
            }
        }
        return "";
    }

    public static final String dropLastWhile(String dropLastWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(dropLastWhile, "$this$dropLastWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int lastIndex = StringsKt.getLastIndex(dropLastWhile); lastIndex >= 0; lastIndex--) {
            if (!predicate.invoke(Character.valueOf(dropLastWhile.charAt(lastIndex))).booleanValue()) {
                String strSubstring = dropLastWhile.substring(0, lastIndex + 1);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return strSubstring;
            }
        }
        return "";
    }

    public static final CharSequence dropWhile(CharSequence dropWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(dropWhile, "$this$dropWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = dropWhile.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(dropWhile.charAt(i))).booleanValue()) {
                return dropWhile.subSequence(i, dropWhile.length());
            }
        }
        return "";
    }

    public static final String dropWhile(String dropWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(dropWhile, "$this$dropWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = dropWhile.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(dropWhile.charAt(i))).booleanValue()) {
                String strSubstring = dropWhile.substring(i);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
                return strSubstring;
            }
        }
        return "";
    }

    public static final CharSequence filter(CharSequence filter, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filter, "$this$filter");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        StringBuilder sb = new StringBuilder();
        int length = filter.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = filter.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
        }
        return sb;
    }

    public static final String filter(String filter, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filter, "$this$filter");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str = filter;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "filterTo(StringBuilder(), predicate).toString()");
        return string;
    }

    public static final CharSequence filterIndexed(CharSequence filterIndexed, Function2<? super Integer, ? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterIndexed, "$this$filterIndexed");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < filterIndexed.length()) {
            char cCharAt = filterIndexed.charAt(i);
            int i3 = i2 + 1;
            if (predicate.invoke(Integer.valueOf(i2), Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
            i++;
            i2 = i3;
        }
        return sb;
    }

    public static final String filterIndexed(String filterIndexed, Function2<? super Integer, ? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterIndexed, "$this$filterIndexed");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str = filterIndexed;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            int i3 = i2 + 1;
            if (predicate.invoke(Integer.valueOf(i2), Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
            i++;
            i2 = i3;
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "filterIndexedTo(StringBu…(), predicate).toString()");
        return string;
    }

    public static final CharSequence filterNot(CharSequence filterNot, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterNot, "$this$filterNot");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < filterNot.length(); i++) {
            char cCharAt = filterNot.charAt(i);
            if (!predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
        }
        return sb;
    }

    public static final String filterNot(String filterNot, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterNot, "$this$filterNot");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str = filterNot;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "filterNotTo(StringBuilder(), predicate).toString()");
        return string;
    }

    public static final <C extends Appendable> C filterNotTo(CharSequence filterNotTo, C destination, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterNotTo, "$this$filterNotTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < filterNotTo.length(); i++) {
            char cCharAt = filterNotTo.charAt(i);
            if (!predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                destination.append(cCharAt);
            }
        }
        return destination;
    }

    public static final <C extends Appendable> C filterTo(CharSequence filterTo, C destination, Function1<? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterTo, "$this$filterTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = filterTo.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = filterTo.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                destination.append(cCharAt);
            }
        }
        return destination;
    }

    public static final CharSequence slice(CharSequence slice, IntRange indices) {
        Intrinsics.checkParameterIsNotNull(slice, "$this$slice");
        Intrinsics.checkParameterIsNotNull(indices, "indices");
        return indices.isEmpty() ? "" : StringsKt.subSequence(slice, indices);
    }

    public static final String slice(String slice, IntRange indices) {
        Intrinsics.checkParameterIsNotNull(slice, "$this$slice");
        Intrinsics.checkParameterIsNotNull(indices, "indices");
        return indices.isEmpty() ? "" : StringsKt.substring(slice, indices);
    }

    public static final CharSequence slice(CharSequence slice, Iterable<Integer> indices) {
        Intrinsics.checkParameterIsNotNull(slice, "$this$slice");
        Intrinsics.checkParameterIsNotNull(indices, "indices");
        int iCollectionSizeOrDefault = CollectionsKt.collectionSizeOrDefault(indices, 10);
        if (iCollectionSizeOrDefault == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iCollectionSizeOrDefault);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            sb.append(slice.charAt(it.next().intValue()));
        }
        return sb;
    }

    private static final String slice(String str, Iterable<Integer> iterable) {
        if (str != null) {
            return StringsKt.slice((CharSequence) str, iterable).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final CharSequence take(CharSequence take, int i) {
        Intrinsics.checkParameterIsNotNull(take, "$this$take");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        return take.subSequence(0, RangesKt.coerceAtMost(i, take.length()));
    }

    public static final String take(String take, int i) {
        Intrinsics.checkParameterIsNotNull(take, "$this$take");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        String strSubstring = take.substring(0, RangesKt.coerceAtMost(i, take.length()));
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final CharSequence takeLast(CharSequence takeLast, int i) {
        Intrinsics.checkParameterIsNotNull(takeLast, "$this$takeLast");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        int length = takeLast.length();
        return takeLast.subSequence(length - RangesKt.coerceAtMost(i, length), length);
    }

    public static final String takeLast(String takeLast, int i) {
        Intrinsics.checkParameterIsNotNull(takeLast, "$this$takeLast");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        int length = takeLast.length();
        String strSubstring = takeLast.substring(length - RangesKt.coerceAtMost(i, length));
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final CharSequence takeLastWhile(CharSequence takeLastWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(takeLastWhile, "$this$takeLastWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int lastIndex = StringsKt.getLastIndex(takeLastWhile); lastIndex >= 0; lastIndex--) {
            if (!predicate.invoke(Character.valueOf(takeLastWhile.charAt(lastIndex))).booleanValue()) {
                return takeLastWhile.subSequence(lastIndex + 1, takeLastWhile.length());
            }
        }
        return takeLastWhile.subSequence(0, takeLastWhile.length());
    }

    public static final String takeLastWhile(String takeLastWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(takeLastWhile, "$this$takeLastWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int lastIndex = StringsKt.getLastIndex(takeLastWhile); lastIndex >= 0; lastIndex--) {
            if (!predicate.invoke(Character.valueOf(takeLastWhile.charAt(lastIndex))).booleanValue()) {
                String strSubstring = takeLastWhile.substring(lastIndex + 1);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
                return strSubstring;
            }
        }
        return takeLastWhile;
    }

    public static final CharSequence takeWhile(CharSequence takeWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(takeWhile, "$this$takeWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = takeWhile.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(takeWhile.charAt(i))).booleanValue()) {
                return takeWhile.subSequence(0, i);
            }
        }
        return takeWhile.subSequence(0, takeWhile.length());
    }

    public static final String takeWhile(String takeWhile, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(takeWhile, "$this$takeWhile");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = takeWhile.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(takeWhile.charAt(i))).booleanValue()) {
                String strSubstring = takeWhile.substring(0, i);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return strSubstring;
            }
        }
        return takeWhile;
    }

    public static final CharSequence reversed(CharSequence reversed) {
        Intrinsics.checkParameterIsNotNull(reversed, "$this$reversed");
        StringBuilder sbReverse = new StringBuilder(reversed).reverse();
        Intrinsics.checkExpressionValueIsNotNull(sbReverse, "StringBuilder(this).reverse()");
        return sbReverse;
    }

    private static final String reversed(String str) {
        if (str != null) {
            return StringsKt.reversed((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final <K, V> Map<K, V> associate(CharSequence associate, Function1<? super Character, ? extends Pair<? extends K, ? extends V>> transform) {
        Intrinsics.checkParameterIsNotNull(associate, "$this$associate");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(associate.length()), 16));
        for (int i = 0; i < associate.length(); i++) {
            Pair<? extends K, ? extends V> pairInvoke = transform.invoke(Character.valueOf(associate.charAt(i)));
            linkedHashMap.put(pairInvoke.getFirst(), pairInvoke.getSecond());
        }
        return linkedHashMap;
    }

    public static final <K> Map<K, Character> associateBy(CharSequence associateBy, Function1<? super Character, ? extends K> keySelector) {
        Intrinsics.checkParameterIsNotNull(associateBy, "$this$associateBy");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(associateBy.length()), 16));
        for (int i = 0; i < associateBy.length(); i++) {
            char cCharAt = associateBy.charAt(i);
            linkedHashMap.put(keySelector.invoke(Character.valueOf(cCharAt)), Character.valueOf(cCharAt));
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, V> associateBy(CharSequence associateBy, Function1<? super Character, ? extends K> keySelector, Function1<? super Character, ? extends V> valueTransform) {
        Intrinsics.checkParameterIsNotNull(associateBy, "$this$associateBy");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        Intrinsics.checkParameterIsNotNull(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(associateBy.length()), 16));
        for (int i = 0; i < associateBy.length(); i++) {
            char cCharAt = associateBy.charAt(i);
            linkedHashMap.put(keySelector.invoke(Character.valueOf(cCharAt)), valueTransform.invoke(Character.valueOf(cCharAt)));
        }
        return linkedHashMap;
    }

    public static final <K, M extends Map<? super K, ? super Character>> M associateByTo(CharSequence associateByTo, M destination, Function1<? super Character, ? extends K> keySelector) {
        Intrinsics.checkParameterIsNotNull(associateByTo, "$this$associateByTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        for (int i = 0; i < associateByTo.length(); i++) {
            char cCharAt = associateByTo.charAt(i);
            destination.put(keySelector.invoke(Character.valueOf(cCharAt)), Character.valueOf(cCharAt));
        }
        return destination;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M associateByTo(CharSequence associateByTo, M destination, Function1<? super Character, ? extends K> keySelector, Function1<? super Character, ? extends V> valueTransform) {
        Intrinsics.checkParameterIsNotNull(associateByTo, "$this$associateByTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        Intrinsics.checkParameterIsNotNull(valueTransform, "valueTransform");
        for (int i = 0; i < associateByTo.length(); i++) {
            char cCharAt = associateByTo.charAt(i);
            destination.put(keySelector.invoke(Character.valueOf(cCharAt)), valueTransform.invoke(Character.valueOf(cCharAt)));
        }
        return destination;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M associateTo(CharSequence associateTo, M destination, Function1<? super Character, ? extends Pair<? extends K, ? extends V>> transform) {
        Intrinsics.checkParameterIsNotNull(associateTo, "$this$associateTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (int i = 0; i < associateTo.length(); i++) {
            Pair<? extends K, ? extends V> pairInvoke = transform.invoke(Character.valueOf(associateTo.charAt(i)));
            destination.put(pairInvoke.getFirst(), pairInvoke.getSecond());
        }
        return destination;
    }

    public static final <V> Map<Character, V> associateWith(CharSequence associateWith, Function1<? super Character, ? extends V> valueSelector) {
        Intrinsics.checkParameterIsNotNull(associateWith, "$this$associateWith");
        Intrinsics.checkParameterIsNotNull(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(associateWith.length()), 16));
        for (int i = 0; i < associateWith.length(); i++) {
            char cCharAt = associateWith.charAt(i);
            linkedHashMap.put(Character.valueOf(cCharAt), valueSelector.invoke(Character.valueOf(cCharAt)));
        }
        return linkedHashMap;
    }

    public static final <V, M extends Map<? super Character, ? super V>> M associateWithTo(CharSequence associateWithTo, M destination, Function1<? super Character, ? extends V> valueSelector) {
        Intrinsics.checkParameterIsNotNull(associateWithTo, "$this$associateWithTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(valueSelector, "valueSelector");
        for (int i = 0; i < associateWithTo.length(); i++) {
            char cCharAt = associateWithTo.charAt(i);
            destination.put(Character.valueOf(cCharAt), valueSelector.invoke(Character.valueOf(cCharAt)));
        }
        return destination;
    }

    public static final <C extends Collection<? super Character>> C toCollection(CharSequence toCollection, C destination) {
        Intrinsics.checkParameterIsNotNull(toCollection, "$this$toCollection");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        for (int i = 0; i < toCollection.length(); i++) {
            destination.add(Character.valueOf(toCollection.charAt(i)));
        }
        return destination;
    }

    public static final HashSet<Character> toHashSet(CharSequence toHashSet) {
        Intrinsics.checkParameterIsNotNull(toHashSet, "$this$toHashSet");
        return (HashSet) StringsKt.toCollection(toHashSet, new HashSet(MapsKt.mapCapacity(toHashSet.length())));
    }

    public static final List<Character> toList(CharSequence toList) {
        Intrinsics.checkParameterIsNotNull(toList, "$this$toList");
        int length = toList.length();
        if (length == 0) {
            return CollectionsKt.emptyList();
        }
        if (length == 1) {
            return CollectionsKt.listOf(Character.valueOf(toList.charAt(0)));
        }
        return StringsKt.toMutableList(toList);
    }

    public static final List<Character> toMutableList(CharSequence toMutableList) {
        Intrinsics.checkParameterIsNotNull(toMutableList, "$this$toMutableList");
        return (List) StringsKt.toCollection(toMutableList, new ArrayList(toMutableList.length()));
    }

    public static final Set<Character> toSet(CharSequence toSet) {
        Intrinsics.checkParameterIsNotNull(toSet, "$this$toSet");
        int length = toSet.length();
        if (length == 0) {
            return SetsKt.emptySet();
        }
        if (length == 1) {
            return SetsKt.setOf(Character.valueOf(toSet.charAt(0)));
        }
        return (Set) StringsKt.toCollection(toSet, new LinkedHashSet(MapsKt.mapCapacity(toSet.length())));
    }

    public static final <R> List<R> flatMap(CharSequence flatMap, Function1<? super Character, ? extends Iterable<? extends R>> transform) {
        Intrinsics.checkParameterIsNotNull(flatMap, "$this$flatMap");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < flatMap.length(); i++) {
            CollectionsKt.addAll(arrayList, transform.invoke(Character.valueOf(flatMap.charAt(i))));
        }
        return arrayList;
    }

    public static final <R, C extends Collection<? super R>> C flatMapTo(CharSequence flatMapTo, C destination, Function1<? super Character, ? extends Iterable<? extends R>> transform) {
        Intrinsics.checkParameterIsNotNull(flatMapTo, "$this$flatMapTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (int i = 0; i < flatMapTo.length(); i++) {
            CollectionsKt.addAll(destination, transform.invoke(Character.valueOf(flatMapTo.charAt(i))));
        }
        return destination;
    }

    public static final <K> Map<K, List<Character>> groupBy(CharSequence groupBy, Function1<? super Character, ? extends K> keySelector) {
        Intrinsics.checkParameterIsNotNull(groupBy, "$this$groupBy");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < groupBy.length(); i++) {
            char cCharAt = groupBy.charAt(i);
            K kInvoke = keySelector.invoke(Character.valueOf(cCharAt));
            Object arrayList = linkedHashMap.get(kInvoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(kInvoke, arrayList);
            }
            ((List) arrayList).add(Character.valueOf(cCharAt));
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, List<V>> groupBy(CharSequence groupBy, Function1<? super Character, ? extends K> keySelector, Function1<? super Character, ? extends V> valueTransform) {
        Intrinsics.checkParameterIsNotNull(groupBy, "$this$groupBy");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        Intrinsics.checkParameterIsNotNull(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < groupBy.length(); i++) {
            char cCharAt = groupBy.charAt(i);
            K kInvoke = keySelector.invoke(Character.valueOf(cCharAt));
            List<V> arrayList = linkedHashMap.get(kInvoke);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                linkedHashMap.put(kInvoke, arrayList);
            }
            arrayList.add(valueTransform.invoke(Character.valueOf(cCharAt)));
        }
        return linkedHashMap;
    }

    public static final <K, M extends Map<? super K, List<Character>>> M groupByTo(CharSequence groupByTo, M destination, Function1<? super Character, ? extends K> keySelector) {
        Intrinsics.checkParameterIsNotNull(groupByTo, "$this$groupByTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        for (int i = 0; i < groupByTo.length(); i++) {
            char cCharAt = groupByTo.charAt(i);
            K kInvoke = keySelector.invoke(Character.valueOf(cCharAt));
            Object arrayList = destination.get(kInvoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                destination.put(kInvoke, arrayList);
            }
            ((List) arrayList).add(Character.valueOf(cCharAt));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V, M extends Map<? super K, List<V>>> M groupByTo(CharSequence groupByTo, M destination, Function1<? super Character, ? extends K> keySelector, Function1<? super Character, ? extends V> valueTransform) {
        Intrinsics.checkParameterIsNotNull(groupByTo, "$this$groupByTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        Intrinsics.checkParameterIsNotNull(valueTransform, "valueTransform");
        for (int i = 0; i < groupByTo.length(); i++) {
            char cCharAt = groupByTo.charAt(i);
            K kInvoke = keySelector.invoke(Character.valueOf(cCharAt));
            Object arrayList = destination.get(kInvoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                destination.put(kInvoke, arrayList);
            }
            ((List) arrayList).add(valueTransform.invoke(Character.valueOf(cCharAt)));
        }
        return destination;
    }

    public static final <K> Grouping<Character, K> groupingBy(final CharSequence groupingBy, final Function1<? super Character, ? extends K> keySelector) {
        Intrinsics.checkParameterIsNotNull(groupingBy, "$this$groupingBy");
        Intrinsics.checkParameterIsNotNull(keySelector, "keySelector");
        return new Grouping<Character, K>() { // from class: kotlin.text.StringsKt___StringsKt.groupingBy.1
            @Override // kotlin.collections.Grouping
            public /* bridge */ /* synthetic */ Object keyOf(Character ch) {
                return keyOf(ch.charValue());
            }

            @Override // kotlin.collections.Grouping
            public Iterator<Character> sourceIterator() {
                return StringsKt.iterator(groupingBy);
            }

            public K keyOf(char element) {
                return (K) keySelector.invoke(Character.valueOf(element));
            }
        };
    }

    public static final <R> List<R> map(CharSequence map, Function1<? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(map, "$this$map");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        ArrayList arrayList = new ArrayList(map.length());
        for (int i = 0; i < map.length(); i++) {
            arrayList.add(transform.invoke(Character.valueOf(map.charAt(i))));
        }
        return arrayList;
    }

    public static final <R> List<R> mapIndexed(CharSequence mapIndexed, Function2<? super Integer, ? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapIndexed, "$this$mapIndexed");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        ArrayList arrayList = new ArrayList(mapIndexed.length());
        int i = 0;
        for (int i2 = 0; i2 < mapIndexed.length(); i2++) {
            char cCharAt = mapIndexed.charAt(i2);
            Integer numValueOf = Integer.valueOf(i);
            i++;
            arrayList.add(transform.invoke(numValueOf, Character.valueOf(cCharAt)));
        }
        return arrayList;
    }

    public static final <R> List<R> mapIndexedNotNull(CharSequence mapIndexedNotNull, Function2<? super Integer, ? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapIndexedNotNull, "$this$mapIndexedNotNull");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < mapIndexedNotNull.length()) {
            int i3 = i2 + 1;
            R rInvoke = transform.invoke(Integer.valueOf(i2), Character.valueOf(mapIndexedNotNull.charAt(i)));
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
            i++;
            i2 = i3;
        }
        return arrayList;
    }

    public static final <R, C extends Collection<? super R>> C mapIndexedTo(CharSequence mapIndexedTo, C destination, Function2<? super Integer, ? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapIndexedTo, "$this$mapIndexedTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        int i = 0;
        for (int i2 = 0; i2 < mapIndexedTo.length(); i2++) {
            char cCharAt = mapIndexedTo.charAt(i2);
            Integer numValueOf = Integer.valueOf(i);
            i++;
            destination.add(transform.invoke(numValueOf, Character.valueOf(cCharAt)));
        }
        return destination;
    }

    public static final <R> List<R> mapNotNull(CharSequence mapNotNull, Function1<? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapNotNull, "$this$mapNotNull");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < mapNotNull.length(); i++) {
            R rInvoke = transform.invoke(Character.valueOf(mapNotNull.charAt(i)));
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
        }
        return arrayList;
    }

    public static final <R, C extends Collection<? super R>> C mapTo(CharSequence mapTo, C destination, Function1<? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapTo, "$this$mapTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (int i = 0; i < mapTo.length(); i++) {
            destination.add(transform.invoke(Character.valueOf(mapTo.charAt(i))));
        }
        return destination;
    }

    public static final Iterable<IndexedValue<Character>> withIndex(final CharSequence withIndex) {
        Intrinsics.checkParameterIsNotNull(withIndex, "$this$withIndex");
        return new IndexingIterable(new Function0<CharIterator>() { // from class: kotlin.text.StringsKt___StringsKt.withIndex.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CharIterator invoke() {
                return StringsKt.iterator(withIndex);
            }
        });
    }

    public static final boolean all(CharSequence all, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(all, "$this$all");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < all.length(); i++) {
            if (!predicate.invoke(Character.valueOf(all.charAt(i))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final boolean any(CharSequence any) {
        Intrinsics.checkParameterIsNotNull(any, "$this$any");
        return !(any.length() == 0);
    }

    public static final boolean any(CharSequence any, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(any, "$this$any");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < any.length(); i++) {
            if (predicate.invoke(Character.valueOf(any.charAt(i))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private static final int count(CharSequence charSequence) {
        return charSequence.length();
    }

    public static final int count(CharSequence count, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(count, "$this$count");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int i = 0;
        for (int i2 = 0; i2 < count.length(); i2++) {
            if (predicate.invoke(Character.valueOf(count.charAt(i2))).booleanValue()) {
                i++;
            }
        }
        return i;
    }

    public static final <R> R fold(CharSequence fold, R r, Function2<? super R, ? super Character, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(fold, "$this$fold");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        for (int i = 0; i < fold.length(); i++) {
            r = operation.invoke(r, Character.valueOf(fold.charAt(i)));
        }
        return r;
    }

    public static final <R> R foldIndexed(CharSequence foldIndexed, R r, Function3<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(foldIndexed, "$this$foldIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int i = 0;
        for (int i2 = 0; i2 < foldIndexed.length(); i2++) {
            char cCharAt = foldIndexed.charAt(i2);
            Integer numValueOf = Integer.valueOf(i);
            i++;
            r = operation.invoke(numValueOf, r, Character.valueOf(cCharAt));
        }
        return r;
    }

    public static final <R> R foldRight(CharSequence foldRight, R r, Function2<? super Character, ? super R, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(foldRight, "$this$foldRight");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        for (int lastIndex = StringsKt.getLastIndex(foldRight); lastIndex >= 0; lastIndex--) {
            r = operation.invoke(Character.valueOf(foldRight.charAt(lastIndex)), r);
        }
        return r;
    }

    public static final <R> R foldRightIndexed(CharSequence foldRightIndexed, R r, Function3<? super Integer, ? super Character, ? super R, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(foldRightIndexed, "$this$foldRightIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        for (int lastIndex = StringsKt.getLastIndex(foldRightIndexed); lastIndex >= 0; lastIndex--) {
            r = operation.invoke(Integer.valueOf(lastIndex), Character.valueOf(foldRightIndexed.charAt(lastIndex)), r);
        }
        return r;
    }

    public static final void forEach(CharSequence forEach, Function1<? super Character, Unit> action) {
        Intrinsics.checkParameterIsNotNull(forEach, "$this$forEach");
        Intrinsics.checkParameterIsNotNull(action, "action");
        for (int i = 0; i < forEach.length(); i++) {
            action.invoke(Character.valueOf(forEach.charAt(i)));
        }
    }

    public static final void forEachIndexed(CharSequence forEachIndexed, Function2<? super Integer, ? super Character, Unit> action) {
        Intrinsics.checkParameterIsNotNull(forEachIndexed, "$this$forEachIndexed");
        Intrinsics.checkParameterIsNotNull(action, "action");
        int i = 0;
        for (int i2 = 0; i2 < forEachIndexed.length(); i2++) {
            char cCharAt = forEachIndexed.charAt(i2);
            Integer numValueOf = Integer.valueOf(i);
            i++;
            action.invoke(numValueOf, Character.valueOf(cCharAt));
        }
    }

    public static final Character max(CharSequence max) {
        Intrinsics.checkParameterIsNotNull(max, "$this$max");
        int i = 1;
        if (max.length() == 0) {
            return null;
        }
        char cCharAt = max.charAt(0);
        int lastIndex = StringsKt.getLastIndex(max);
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = max.charAt(i);
                if (cCharAt < cCharAt2) {
                    cCharAt = cCharAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final <R extends Comparable<? super R>> Character maxBy(CharSequence maxBy, Function1<? super Character, ? extends R> selector) {
        Intrinsics.checkParameterIsNotNull(maxBy, "$this$maxBy");
        Intrinsics.checkParameterIsNotNull(selector, "selector");
        int i = 1;
        if (maxBy.length() == 0) {
            return null;
        }
        char cCharAt = maxBy.charAt(0);
        int lastIndex = StringsKt.getLastIndex(maxBy);
        if (lastIndex == 0) {
            return Character.valueOf(cCharAt);
        }
        R rInvoke = selector.invoke(Character.valueOf(cCharAt));
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = maxBy.charAt(i);
                R rInvoke2 = selector.invoke(Character.valueOf(cCharAt2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    cCharAt = cCharAt2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final Character maxWith(CharSequence maxWith, Comparator<? super Character> comparator) {
        Intrinsics.checkParameterIsNotNull(maxWith, "$this$maxWith");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        int i = 1;
        if (maxWith.length() == 0) {
            return null;
        }
        char cCharAt = maxWith.charAt(0);
        int lastIndex = StringsKt.getLastIndex(maxWith);
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = maxWith.charAt(i);
                if (comparator.compare(Character.valueOf(cCharAt), Character.valueOf(cCharAt2)) < 0) {
                    cCharAt = cCharAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final Character min(CharSequence min) {
        Intrinsics.checkParameterIsNotNull(min, "$this$min");
        int i = 1;
        if (min.length() == 0) {
            return null;
        }
        char cCharAt = min.charAt(0);
        int lastIndex = StringsKt.getLastIndex(min);
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = min.charAt(i);
                if (cCharAt > cCharAt2) {
                    cCharAt = cCharAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final <R extends Comparable<? super R>> Character minBy(CharSequence minBy, Function1<? super Character, ? extends R> selector) {
        Intrinsics.checkParameterIsNotNull(minBy, "$this$minBy");
        Intrinsics.checkParameterIsNotNull(selector, "selector");
        int i = 1;
        if (minBy.length() == 0) {
            return null;
        }
        char cCharAt = minBy.charAt(0);
        int lastIndex = StringsKt.getLastIndex(minBy);
        if (lastIndex == 0) {
            return Character.valueOf(cCharAt);
        }
        R rInvoke = selector.invoke(Character.valueOf(cCharAt));
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = minBy.charAt(i);
                R rInvoke2 = selector.invoke(Character.valueOf(cCharAt2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    cCharAt = cCharAt2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final Character minWith(CharSequence minWith, Comparator<? super Character> comparator) {
        Intrinsics.checkParameterIsNotNull(minWith, "$this$minWith");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        int i = 1;
        if (minWith.length() == 0) {
            return null;
        }
        char cCharAt = minWith.charAt(0);
        int lastIndex = StringsKt.getLastIndex(minWith);
        if (1 <= lastIndex) {
            while (true) {
                char cCharAt2 = minWith.charAt(i);
                if (comparator.compare(Character.valueOf(cCharAt), Character.valueOf(cCharAt2)) > 0) {
                    cCharAt = cCharAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final boolean none(CharSequence none) {
        Intrinsics.checkParameterIsNotNull(none, "$this$none");
        return none.length() == 0;
    }

    public static final boolean none(CharSequence none, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(none, "$this$none");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (int i = 0; i < none.length(); i++) {
            if (predicate.invoke(Character.valueOf(none.charAt(i))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <S extends CharSequence> S onEach(S onEach, Function1<? super Character, Unit> action) {
        Intrinsics.checkParameterIsNotNull(onEach, "$this$onEach");
        Intrinsics.checkParameterIsNotNull(action, "action");
        for (int i = 0; i < onEach.length(); i++) {
            action.invoke(Character.valueOf(onEach.charAt(i)));
        }
        return onEach;
    }

    public static final char reduce(CharSequence reduce, Function2<? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduce, "$this$reduce");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int i = 1;
        if (reduce.length() == 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char cCharAt = reduce.charAt(0);
        int lastIndex = StringsKt.getLastIndex(reduce);
        if (1 <= lastIndex) {
            while (true) {
                cCharAt = operation.invoke(Character.valueOf(cCharAt), Character.valueOf(reduce.charAt(i))).charValue();
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return cCharAt;
    }

    public static final char reduceIndexed(CharSequence reduceIndexed, Function3<? super Integer, ? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduceIndexed, "$this$reduceIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int i = 1;
        if (reduceIndexed.length() == 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char cCharAt = reduceIndexed.charAt(0);
        int lastIndex = StringsKt.getLastIndex(reduceIndexed);
        if (1 <= lastIndex) {
            while (true) {
                cCharAt = operation.invoke(Integer.valueOf(i), Character.valueOf(cCharAt), Character.valueOf(reduceIndexed.charAt(i))).charValue();
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return cCharAt;
    }

    public static final Character reduceOrNull(CharSequence reduceOrNull, Function2<? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduceOrNull, "$this$reduceOrNull");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int i = 1;
        if (reduceOrNull.length() == 0) {
            return null;
        }
        char cCharAt = reduceOrNull.charAt(0);
        int lastIndex = StringsKt.getLastIndex(reduceOrNull);
        if (1 <= lastIndex) {
            while (true) {
                cCharAt = operation.invoke(Character.valueOf(cCharAt), Character.valueOf(reduceOrNull.charAt(i))).charValue();
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(cCharAt);
    }

    public static final char reduceRight(CharSequence reduceRight, Function2<? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduceRight, "$this$reduceRight");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int lastIndex = StringsKt.getLastIndex(reduceRight);
        if (lastIndex < 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char cCharAt = reduceRight.charAt(lastIndex);
        for (int i = lastIndex - 1; i >= 0; i--) {
            cCharAt = operation.invoke(Character.valueOf(reduceRight.charAt(i)), Character.valueOf(cCharAt)).charValue();
        }
        return cCharAt;
    }

    public static final char reduceRightIndexed(CharSequence reduceRightIndexed, Function3<? super Integer, ? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduceRightIndexed, "$this$reduceRightIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int lastIndex = StringsKt.getLastIndex(reduceRightIndexed);
        if (lastIndex < 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char cCharAt = reduceRightIndexed.charAt(lastIndex);
        for (int i = lastIndex - 1; i >= 0; i--) {
            cCharAt = operation.invoke(Integer.valueOf(i), Character.valueOf(reduceRightIndexed.charAt(i)), Character.valueOf(cCharAt)).charValue();
        }
        return cCharAt;
    }

    public static final Character reduceRightOrNull(CharSequence reduceRightOrNull, Function2<? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(reduceRightOrNull, "$this$reduceRightOrNull");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        int lastIndex = StringsKt.getLastIndex(reduceRightOrNull);
        if (lastIndex < 0) {
            return null;
        }
        char cCharAt = reduceRightOrNull.charAt(lastIndex);
        for (int i = lastIndex - 1; i >= 0; i--) {
            cCharAt = operation.invoke(Character.valueOf(reduceRightOrNull.charAt(i)), Character.valueOf(cCharAt)).charValue();
        }
        return Character.valueOf(cCharAt);
    }

    public static final <R> List<R> scan(CharSequence scan, R r, Function2<? super R, ? super Character, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(scan, "$this$scan");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (scan.length() == 0) {
            return CollectionsKt.listOf(r);
        }
        ArrayList arrayList = new ArrayList(scan.length() + 1);
        arrayList.add(r);
        for (int i = 0; i < scan.length(); i++) {
            r = operation.invoke(r, Character.valueOf(scan.charAt(i)));
            arrayList.add(r);
        }
        return arrayList;
    }

    public static final <R> List<R> scanIndexed(CharSequence scanIndexed, R r, Function3<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(scanIndexed, "$this$scanIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (scanIndexed.length() == 0) {
            return CollectionsKt.listOf(r);
        }
        ArrayList arrayList = new ArrayList(scanIndexed.length() + 1);
        arrayList.add(r);
        int length = scanIndexed.length();
        for (int i = 0; i < length; i++) {
            r = operation.invoke(Integer.valueOf(i), r, Character.valueOf(scanIndexed.charAt(i)));
            arrayList.add(r);
        }
        return arrayList;
    }

    public static final List<Character> scanReduce(CharSequence scanReduce, Function2<? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(scanReduce, "$this$scanReduce");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (scanReduce.length() == 0) {
            return CollectionsKt.emptyList();
        }
        char cCharAt = scanReduce.charAt(0);
        ArrayList arrayList = new ArrayList(scanReduce.length());
        arrayList.add(Character.valueOf(cCharAt));
        int length = scanReduce.length();
        for (int i = 1; i < length; i++) {
            cCharAt = operation.invoke(Character.valueOf(cCharAt), Character.valueOf(scanReduce.charAt(i))).charValue();
            arrayList.add(Character.valueOf(cCharAt));
        }
        return arrayList;
    }

    public static final List<Character> scanReduceIndexed(CharSequence scanReduceIndexed, Function3<? super Integer, ? super Character, ? super Character, Character> operation) {
        Intrinsics.checkParameterIsNotNull(scanReduceIndexed, "$this$scanReduceIndexed");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (scanReduceIndexed.length() == 0) {
            return CollectionsKt.emptyList();
        }
        char cCharAt = scanReduceIndexed.charAt(0);
        ArrayList arrayList = new ArrayList(scanReduceIndexed.length());
        arrayList.add(Character.valueOf(cCharAt));
        int length = scanReduceIndexed.length();
        for (int i = 1; i < length; i++) {
            cCharAt = operation.invoke(Integer.valueOf(i), Character.valueOf(cCharAt), Character.valueOf(scanReduceIndexed.charAt(i))).charValue();
            arrayList.add(Character.valueOf(cCharAt));
        }
        return arrayList;
    }

    public static final int sumBy(CharSequence sumBy, Function1<? super Character, Integer> selector) {
        Intrinsics.checkParameterIsNotNull(sumBy, "$this$sumBy");
        Intrinsics.checkParameterIsNotNull(selector, "selector");
        int iIntValue = 0;
        for (int i = 0; i < sumBy.length(); i++) {
            iIntValue += selector.invoke(Character.valueOf(sumBy.charAt(i))).intValue();
        }
        return iIntValue;
    }

    public static final double sumByDouble(CharSequence sumByDouble, Function1<? super Character, Double> selector) {
        Intrinsics.checkParameterIsNotNull(sumByDouble, "$this$sumByDouble");
        Intrinsics.checkParameterIsNotNull(selector, "selector");
        double dDoubleValue = 0.0d;
        for (int i = 0; i < sumByDouble.length(); i++) {
            dDoubleValue += selector.invoke(Character.valueOf(sumByDouble.charAt(i))).doubleValue();
        }
        return dDoubleValue;
    }

    public static final List<String> chunked(CharSequence chunked, int i) {
        Intrinsics.checkParameterIsNotNull(chunked, "$this$chunked");
        return StringsKt.windowed(chunked, i, i, true);
    }

    public static final <R> List<R> chunked(CharSequence chunked, int i, Function1<? super CharSequence, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(chunked, "$this$chunked");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        return StringsKt.windowed(chunked, i, i, true, transform);
    }

    public static final Sequence<String> chunkedSequence(CharSequence chunkedSequence, int i) {
        Intrinsics.checkParameterIsNotNull(chunkedSequence, "$this$chunkedSequence");
        return StringsKt.chunkedSequence(chunkedSequence, i, new Function1<CharSequence, String>() { // from class: kotlin.text.StringsKt___StringsKt.chunkedSequence.1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(CharSequence it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return it.toString();
            }
        });
    }

    public static final <R> Sequence<R> chunkedSequence(CharSequence chunkedSequence, int i, Function1<? super CharSequence, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(chunkedSequence, "$this$chunkedSequence");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        return StringsKt.windowedSequence(chunkedSequence, i, i, true, transform);
    }

    public static final Pair<CharSequence, CharSequence> partition(CharSequence partition, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(partition, "$this$partition");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (int i = 0; i < partition.length(); i++) {
            char cCharAt = partition.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            } else {
                sb2.append(cCharAt);
            }
        }
        return new Pair<>(sb, sb2);
    }

    public static final Pair<String, String> partition(String partition, Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(partition, "$this$partition");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        int length = partition.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = partition.charAt(i);
            if (predicate.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                sb.append(cCharAt);
            } else {
                sb2.append(cCharAt);
            }
        }
        return new Pair<>(sb.toString(), sb2.toString());
    }

    public static /* synthetic */ List windowed$default(CharSequence charSequence, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.windowed(charSequence, i, i2, z);
    }

    public static final List<String> windowed(CharSequence windowed, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(windowed, "$this$windowed");
        return StringsKt.windowed(windowed, i, i2, z, new Function1<CharSequence, String>() { // from class: kotlin.text.StringsKt___StringsKt.windowed.1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(CharSequence it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return it.toString();
            }
        });
    }

    public static /* synthetic */ List windowed$default(CharSequence charSequence, int i, int i2, boolean z, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.windowed(charSequence, i, i2, z, function1);
    }

    public static final <R> List<R> windowed(CharSequence windowed, int i, int i2, boolean z, Function1<? super CharSequence, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(windowed, "$this$windowed");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        int length = windowed.length();
        int i3 = 0;
        ArrayList arrayList = new ArrayList((length / i2) + (length % i2 == 0 ? 0 : 1));
        while (i3 >= 0 && length > i3) {
            int i4 = i3 + i;
            if (i4 < 0 || i4 > length) {
                if (!z) {
                    break;
                }
                i4 = length;
            }
            arrayList.add(transform.invoke(windowed.subSequence(i3, i4)));
            i3 += i2;
        }
        return arrayList;
    }

    public static /* synthetic */ Sequence windowedSequence$default(CharSequence charSequence, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.windowedSequence(charSequence, i, i2, z);
    }

    public static final Sequence<String> windowedSequence(CharSequence windowedSequence, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(windowedSequence, "$this$windowedSequence");
        return StringsKt.windowedSequence(windowedSequence, i, i2, z, new Function1<CharSequence, String>() { // from class: kotlin.text.StringsKt___StringsKt.windowedSequence.1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(CharSequence it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return it.toString();
            }
        });
    }

    public static /* synthetic */ Sequence windowedSequence$default(CharSequence charSequence, int i, int i2, boolean z, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return StringsKt.windowedSequence(charSequence, i, i2, z, function1);
    }

    public static final <R> Sequence<R> windowedSequence(final CharSequence windowedSequence, final int i, int i2, boolean z, final Function1<? super CharSequence, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(windowedSequence, "$this$windowedSequence");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        return SequencesKt.map(CollectionsKt.asSequence(RangesKt.step(z ? StringsKt.getIndices(windowedSequence) : RangesKt.until(0, (windowedSequence.length() - i) + 1), i2)), new Function1<Integer, R>() { // from class: kotlin.text.StringsKt___StringsKt.windowedSequence.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final R invoke(int i3) {
                int length = i + i3;
                if (length < 0 || length > windowedSequence.length()) {
                    length = windowedSequence.length();
                }
                return (R) transform.invoke(windowedSequence.subSequence(i3, length));
            }
        });
    }

    public static final <V> List<V> zip(CharSequence zip, CharSequence other, Function2<? super Character, ? super Character, ? extends V> transform) {
        Intrinsics.checkParameterIsNotNull(zip, "$this$zip");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        int iMin = Math.min(zip.length(), other.length());
        ArrayList arrayList = new ArrayList(iMin);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(transform.invoke(Character.valueOf(zip.charAt(i)), Character.valueOf(other.charAt(i))));
        }
        return arrayList;
    }

    public static final <R> List<R> zipWithNext(CharSequence zipWithNext, Function2<? super Character, ? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(zipWithNext, "$this$zipWithNext");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        int length = zipWithNext.length() - 1;
        if (length < 1) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        int i = 0;
        while (i < length) {
            Character chValueOf = Character.valueOf(zipWithNext.charAt(i));
            i++;
            arrayList.add(transform.invoke(chValueOf, Character.valueOf(zipWithNext.charAt(i))));
        }
        return arrayList;
    }

    public static final Iterable<Character> asIterable(CharSequence asIterable) {
        Intrinsics.checkParameterIsNotNull(asIterable, "$this$asIterable");
        if (asIterable instanceof String) {
            if (asIterable.length() == 0) {
                return CollectionsKt.emptyList();
            }
        }
        return new StringsKt___StringsKt$asIterable$$inlined$Iterable$1(asIterable);
    }

    public static final Sequence<Character> asSequence(final CharSequence asSequence) {
        Intrinsics.checkParameterIsNotNull(asSequence, "$this$asSequence");
        if (asSequence instanceof String) {
            if (asSequence.length() == 0) {
                return SequencesKt.emptySequence();
            }
        }
        return new Sequence<Character>() { // from class: kotlin.text.StringsKt___StringsKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<Character> iterator() {
                return StringsKt.iterator(asSequence);
            }
        };
    }

    private static final Character find(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        for (int i = 0; i < charSequence.length(); i++) {
            char cCharAt = charSequence.charAt(i);
            if (function1.invoke(Character.valueOf(cCharAt)).booleanValue()) {
                return Character.valueOf(cCharAt);
            }
        }
        return null;
    }

    private static final Character findLast(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        char cCharAt;
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return null;
            }
            cCharAt = charSequence.charAt(length);
        } while (!function1.invoke(Character.valueOf(cCharAt)).booleanValue());
        return Character.valueOf(cCharAt);
    }

    public static final <C extends Appendable> C filterIndexedTo(CharSequence filterIndexedTo, C destination, Function2<? super Integer, ? super Character, Boolean> predicate) throws IOException {
        Intrinsics.checkParameterIsNotNull(filterIndexedTo, "$this$filterIndexedTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int i = 0;
        int i2 = 0;
        while (i < filterIndexedTo.length()) {
            char cCharAt = filterIndexedTo.charAt(i);
            int i3 = i2 + 1;
            if (predicate.invoke(Integer.valueOf(i2), Character.valueOf(cCharAt)).booleanValue()) {
                destination.append(cCharAt);
            }
            i++;
            i2 = i3;
        }
        return destination;
    }

    public static final <R, C extends Collection<? super R>> C mapIndexedNotNullTo(CharSequence mapIndexedNotNullTo, C destination, Function2<? super Integer, ? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapIndexedNotNullTo, "$this$mapIndexedNotNullTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        int i = 0;
        int i2 = 0;
        while (i < mapIndexedNotNullTo.length()) {
            int i3 = i2 + 1;
            R rInvoke = transform.invoke(Integer.valueOf(i2), Character.valueOf(mapIndexedNotNullTo.charAt(i)));
            if (rInvoke != null) {
                destination.add(rInvoke);
            }
            i++;
            i2 = i3;
        }
        return destination;
    }

    public static final <R, C extends Collection<? super R>> C mapNotNullTo(CharSequence mapNotNullTo, C destination, Function1<? super Character, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(mapNotNullTo, "$this$mapNotNullTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (int i = 0; i < mapNotNullTo.length(); i++) {
            R rInvoke = transform.invoke(Character.valueOf(mapNotNullTo.charAt(i)));
            if (rInvoke != null) {
                destination.add(rInvoke);
            }
        }
        return destination;
    }

    public static final List<Pair<Character, Character>> zip(CharSequence zip, CharSequence other) {
        Intrinsics.checkParameterIsNotNull(zip, "$this$zip");
        Intrinsics.checkParameterIsNotNull(other, "other");
        int iMin = Math.min(zip.length(), other.length());
        ArrayList arrayList = new ArrayList(iMin);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(TuplesKt.m856to(Character.valueOf(zip.charAt(i)), Character.valueOf(other.charAt(i))));
        }
        return arrayList;
    }

    public static final List<Pair<Character, Character>> zipWithNext(CharSequence zipWithNext) {
        Intrinsics.checkParameterIsNotNull(zipWithNext, "$this$zipWithNext");
        int length = zipWithNext.length() - 1;
        if (length < 1) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        int i = 0;
        while (i < length) {
            char cCharAt = zipWithNext.charAt(i);
            i++;
            arrayList.add(TuplesKt.m856to(Character.valueOf(cCharAt), Character.valueOf(zipWithNext.charAt(i))));
        }
        return arrayList;
    }
}
