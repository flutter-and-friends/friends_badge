package cn.forward.androids.views;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class EasyAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<SelectionViewHolder<VH>> {
    private Context context;
    private int maxSelectionCount;
    private Mode mode;
    private OnItemClickedListener onItemClickedListener;
    private OnItemLongClickedListener onItemLongClickedListener;
    private OnModeChangedListener onModeChangedListener;
    private OnMultiSelectListener onMultiSelectListener;
    private OnSingleSelectListener onSingleSelectListener;
    private LinkedHashSet<Integer> selectedSet;
    private int singleSelectedPosition;

    public enum Mode {
        CLICK,
        SINGLE_SELECT,
        MULTI_SELECT
    }

    public interface OnItemClickedListener {
        void onClicked(int i);
    }

    public interface OnItemLongClickedListener {
        boolean onLongClicked(int i);
    }

    public interface OnModeChangedListener {
        void onModeChanged(Mode mode, Mode mode2);
    }

    public interface OnMultiSelectListener {
        void onOutOfMax(int i);

        void onSelected(int i, boolean z);

        void onSelected(SelectionMode selectionMode, Set<Integer> set);
    }

    public interface OnSingleSelectListener {
        void onSelected(int i);
    }

    public enum SelectionMode {
        SELECT_ALL,
        UNSELECT_ALL,
        REVERSE_SELECTED
    }

    public abstract void whenBindViewHolder(VH vh, int i);

    public abstract VH whenCreateViewHolder(ViewGroup viewGroup, int i);

    public EasyAdapter(Context context, Mode mode, int i) {
        this.singleSelectedPosition = 0;
        this.onItemClickedListener = null;
        this.onItemLongClickedListener = null;
        this.onSingleSelectListener = null;
        this.onMultiSelectListener = null;
        this.onModeChangedListener = null;
        this.selectedSet = new LinkedHashSet<>();
        this.context = context;
        this.mode = mode;
        this.maxSelectionCount = i;
    }

    public EasyAdapter(Context context) {
        this(context, Mode.CLICK, -1);
    }

    public void setMaxSelectionCount(int i) {
        this.maxSelectionCount = i;
        if (i > 0 && this.selectedSet.size() > i) {
            this.selectedSet.clear();
        }
        notifyDataSetChanged();
    }

    public int getMaxSelectionCount() {
        return this.maxSelectionCount;
    }

    public void setMode(Mode mode) {
        Mode mode2 = this.mode;
        if (mode2 == mode) {
            return;
        }
        this.mode = mode;
        OnModeChangedListener onModeChangedListener = this.onModeChangedListener;
        if (onModeChangedListener != null) {
            onModeChangedListener.onModeChanged(mode2, mode);
        }
        notifyDataSetChanged();
    }

    public void setSingleSelectedPosition(int i) {
        if (this.singleSelectedPosition == i) {
            return;
        }
        this.singleSelectedPosition = i;
        OnSingleSelectListener onSingleSelectListener = this.onSingleSelectListener;
        if (onSingleSelectListener != null) {
            onSingleSelectListener.onSelected(i);
        }
        notifyDataSetChanged();
    }

    public void setOnItemClickedListener(OnItemClickedListener onItemClickedListener) {
        this.onItemClickedListener = onItemClickedListener;
    }

    public OnItemClickedListener getOnItemClickedListener() {
        return this.onItemClickedListener;
    }

    public void setOnItemLongClickedListener(OnItemLongClickedListener onItemLongClickedListener) {
        this.onItemLongClickedListener = onItemLongClickedListener;
    }

    public OnItemLongClickedListener getOnItemLongClickedListener() {
        return this.onItemLongClickedListener;
    }

    public void setOnSingleSelectListener(OnSingleSelectListener onSingleSelectListener) {
        this.onSingleSelectListener = onSingleSelectListener;
    }

    public int getSingleSelectedPosition() {
        return this.singleSelectedPosition;
    }

    public void setOnMultiSelectListener(OnMultiSelectListener onMultiSelectListener) {
        this.onMultiSelectListener = onMultiSelectListener;
    }

    public OnMultiSelectListener getOnMultiSelectListener() {
        return this.onMultiSelectListener;
    }

    public void setOnModeChangedListener(OnModeChangedListener onModeChangedListener) {
        this.onModeChangedListener = onModeChangedListener;
    }

    public OnModeChangedListener getOnModeChangedListener() {
        return this.onModeChangedListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionViewHolder<VH> onCreateViewHolder(ViewGroup viewGroup, int i) {
        final SelectionViewHolder<VH> selectionViewHolder = new SelectionViewHolder<>(whenCreateViewHolder(viewGroup, i));
        selectionViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.forward.androids.views.EasyAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int adapterPosition = selectionViewHolder.getAdapterPosition();
                if (EasyAdapter.this.mode == Mode.CLICK) {
                    if (EasyAdapter.this.onItemClickedListener != null) {
                        EasyAdapter.this.onItemClickedListener.onClicked(adapterPosition);
                        return;
                    }
                    return;
                }
                if (EasyAdapter.this.mode == Mode.SINGLE_SELECT) {
                    EasyAdapter.this.singleSelectedPosition = adapterPosition;
                    if (EasyAdapter.this.onSingleSelectListener != null) {
                        EasyAdapter.this.onSingleSelectListener.onSelected(EasyAdapter.this.singleSelectedPosition);
                    }
                    EasyAdapter.this.notifyDataSetChanged();
                    return;
                }
                if (EasyAdapter.this.mode == Mode.MULTI_SELECT) {
                    if (EasyAdapter.this.maxSelectionCount <= 0 || EasyAdapter.this.selectedSet.size() < EasyAdapter.this.maxSelectionCount || EasyAdapter.this.selectedSet.contains(Integer.valueOf(adapterPosition))) {
                        boolean zContains = EasyAdapter.this.selectedSet.contains(Integer.valueOf(adapterPosition));
                        if (zContains) {
                            EasyAdapter.this.selectedSet.remove(Integer.valueOf(adapterPosition));
                        } else {
                            EasyAdapter.this.selectedSet.add(Integer.valueOf(adapterPosition));
                        }
                        if (EasyAdapter.this.onMultiSelectListener != null) {
                            EasyAdapter.this.onMultiSelectListener.onSelected(adapterPosition, !zContains);
                        }
                        EasyAdapter.this.notifyDataSetChanged();
                        return;
                    }
                    if (EasyAdapter.this.onMultiSelectListener != null) {
                        EasyAdapter.this.onMultiSelectListener.onOutOfMax(adapterPosition);
                    }
                }
            }
        });
        selectionViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.forward.androids.views.EasyAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                int adapterPosition = selectionViewHolder.getAdapterPosition();
                if (EasyAdapter.this.onItemLongClickedListener != null) {
                    return EasyAdapter.this.onItemLongClickedListener.onLongClicked(adapterPosition);
                }
                return false;
            }
        });
        return selectionViewHolder;
    }

    /* renamed from: cn.forward.androids.views.EasyAdapter$3 */
    static /* synthetic */ class C04443 {
        static final /* synthetic */ int[] $SwitchMap$cn$forward$androids$views$EasyAdapter$Mode = new int[Mode.values().length];

        static {
            try {
                $SwitchMap$cn$forward$androids$views$EasyAdapter$Mode[Mode.CLICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$forward$androids$views$EasyAdapter$Mode[Mode.SINGLE_SELECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$forward$androids$views$EasyAdapter$Mode[Mode.MULTI_SELECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SelectionViewHolder<VH> selectionViewHolder, int i) {
        whenBindViewHolder(selectionViewHolder.viewHolder, i);
        int i2 = C04443.$SwitchMap$cn$forward$androids$views$EasyAdapter$Mode[this.mode.ordinal()];
        if (i2 == 1) {
            selectionViewHolder.itemView.setSelected(false);
        } else if (i2 == 2) {
            selectionViewHolder.itemView.setSelected(this.singleSelectedPosition == i);
        } else {
            if (i2 != 3) {
                return;
            }
            selectionViewHolder.itemView.setSelected(this.selectedSet.contains(Integer.valueOf(i)));
        }
    }

    public void selectAll() {
        if (this.maxSelectionCount > 0) {
            return;
        }
        for (int i = 0; i < getItemCount(); i++) {
            this.selectedSet.add(Integer.valueOf(i));
        }
        OnMultiSelectListener onMultiSelectListener = this.onMultiSelectListener;
        if (onMultiSelectListener != null) {
            onMultiSelectListener.onSelected(SelectionMode.SELECT_ALL, new LinkedHashSet(this.selectedSet));
        }
        notifyDataSetChanged();
    }

    public void unselectAll() {
        this.selectedSet.clear();
        OnMultiSelectListener onMultiSelectListener = this.onMultiSelectListener;
        if (onMultiSelectListener != null) {
            onMultiSelectListener.onSelected(SelectionMode.UNSELECT_ALL, new LinkedHashSet(this.selectedSet));
        }
        notifyDataSetChanged();
    }

    public void reverseSelected() {
        if (this.maxSelectionCount > 0) {
            return;
        }
        HashSet hashSet = new HashSet(this.selectedSet);
        for (int i = 0; i < getItemCount(); i++) {
            this.selectedSet.add(Integer.valueOf(i));
        }
        this.selectedSet.removeAll(hashSet);
        OnMultiSelectListener onMultiSelectListener = this.onMultiSelectListener;
        if (onMultiSelectListener != null) {
            onMultiSelectListener.onSelected(SelectionMode.REVERSE_SELECTED, new LinkedHashSet(this.selectedSet));
        }
        notifyDataSetChanged();
    }

    public void select(int... iArr) {
        if (this.mode == Mode.SINGLE_SELECT) {
            this.singleSelectedPosition = iArr[0];
            OnSingleSelectListener onSingleSelectListener = this.onSingleSelectListener;
            if (onSingleSelectListener != null) {
                onSingleSelectListener.onSelected(this.singleSelectedPosition);
                return;
            }
            return;
        }
        for (int i : iArr) {
            if (i < getItemCount() && !this.selectedSet.contains(Integer.valueOf(i))) {
                if (this.onMultiSelectListener != null) {
                    if (this.maxSelectionCount > 0 && this.selectedSet.size() >= this.maxSelectionCount) {
                        this.onMultiSelectListener.onOutOfMax(i);
                    } else {
                        this.selectedSet.add(Integer.valueOf(i));
                        this.onMultiSelectListener.onSelected(i, false);
                    }
                } else if (this.maxSelectionCount < 1 || this.selectedSet.size() < this.maxSelectionCount) {
                    this.selectedSet.add(Integer.valueOf(i));
                }
            }
        }
        notifyDataSetChanged();
    }

    public void unselect(int... iArr) {
        for (int i : iArr) {
            if (i < getItemCount() && this.selectedSet.contains(Integer.valueOf(i))) {
                if (this.onMultiSelectListener != null) {
                    this.selectedSet.remove(Integer.valueOf(i));
                    this.onMultiSelectListener.onSelected(i, false);
                } else {
                    this.selectedSet.remove(Integer.valueOf(i));
                }
            }
        }
        notifyDataSetChanged();
    }

    public boolean isSelected(int i) {
        return this.selectedSet.contains(Integer.valueOf(i));
    }

    public Set<Integer> getSelectedSet() {
        return new LinkedHashSet(this.selectedSet);
    }

    static class SelectionViewHolder<VH extends RecyclerView.ViewHolder> extends RecyclerView.ViewHolder {
        VH viewHolder;

        public SelectionViewHolder(VH vh) {
            super(new SelectionItemView(vh));
            this.viewHolder = vh;
        }
    }

    private static class SelectionItemView extends FrameLayout {
        public SelectionItemView(RecyclerView.ViewHolder viewHolder) {
            super(viewHolder.itemView.getContext());
            addView(viewHolder.itemView);
        }
    }
}
