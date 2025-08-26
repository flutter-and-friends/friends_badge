package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;

/* loaded from: classes.dex */
public class DoodleColor implements IDoodleColor {
    private Bitmap mBitmap;
    private int mColor;
    private int mLevel;
    private Matrix mMatrix;
    private Shader.TileMode mTileX;
    private Shader.TileMode mTileY;
    private Type mType;

    public enum Type {
        COLOR,
        BITMAP
    }

    public DoodleColor(int i) {
        this.mLevel = 1;
        this.mTileX = Shader.TileMode.MIRROR;
        this.mTileY = Shader.TileMode.MIRROR;
        this.mType = Type.COLOR;
        this.mColor = i;
    }

    public DoodleColor(Bitmap bitmap) {
        this(bitmap, null);
    }

    public DoodleColor(Bitmap bitmap, Matrix matrix) {
        this(bitmap, matrix, Shader.TileMode.MIRROR, Shader.TileMode.MIRROR);
    }

    public DoodleColor(Bitmap bitmap, Matrix matrix, Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        this.mLevel = 1;
        this.mTileX = Shader.TileMode.MIRROR;
        this.mTileY = Shader.TileMode.MIRROR;
        this.mType = Type.BITMAP;
        this.mMatrix = matrix;
        this.mBitmap = bitmap;
        this.mTileX = tileMode;
        this.mTileY = tileMode2;
    }

    @Override // cn.highlight.lib_doodle.IDoodleColor
    public void config(IDoodleItem iDoodleItem, Paint paint) {
        if (this.mType == Type.COLOR) {
            paint.setColor(this.mColor);
            paint.setShader(null);
        } else if (this.mType == Type.BITMAP) {
            BitmapShader bitmapShader = new BitmapShader(this.mBitmap, this.mTileX, this.mTileY);
            bitmapShader.setLocalMatrix(this.mMatrix);
            paint.setShader(bitmapShader);
        }
    }

    public void setColor(int i) {
        this.mType = Type.COLOR;
        this.mColor = i;
    }

    public void setColor(Bitmap bitmap) {
        this.mType = Type.BITMAP;
        this.mBitmap = bitmap;
    }

    public void setColor(Bitmap bitmap, Matrix matrix) {
        this.mType = Type.BITMAP;
        this.mMatrix = matrix;
        this.mBitmap = bitmap;
    }

    public void setColor(Bitmap bitmap, Matrix matrix, Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        this.mType = Type.BITMAP;
        this.mBitmap = bitmap;
        this.mMatrix = matrix;
        this.mTileX = tileMode;
        this.mTileY = tileMode2;
    }

    public void setMatrix(Matrix matrix) {
        this.mMatrix = matrix;
    }

    public Matrix getMatrix() {
        return this.mMatrix;
    }

    public int getColor() {
        return this.mColor;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public Type getType() {
        return this.mType;
    }

    @Override // cn.highlight.lib_doodle.IDoodleColor
    public IDoodleColor copy() {
        DoodleColor doodleColor;
        if (this.mType == Type.COLOR) {
            doodleColor = new DoodleColor(this.mColor);
        } else {
            doodleColor = new DoodleColor(this.mBitmap);
        }
        doodleColor.mTileX = this.mTileX;
        doodleColor.mTileY = this.mTileY;
        doodleColor.mMatrix = new Matrix(this.mMatrix);
        doodleColor.mLevel = this.mLevel;
        return doodleColor;
    }

    public void setLevel(int i) {
        this.mLevel = i;
    }

    public int getLevel() {
        return this.mLevel;
    }
}
