package cn.forward.androids.Image;

/* loaded from: classes.dex */
public class ImageCacheKeyGenerator {
    public String generateCacheKey(int[] iArr, String str, ImageLoaderConfig imageLoaderConfig) {
        int i = iArr[0];
        int i2 = iArr[1];
        if (imageLoaderConfig.isLoadOriginal()) {
            return str + "_" + imageLoaderConfig.isAutoRotate() + "_" + imageLoaderConfig.isExtractThumbnail();
        }
        return "" + str + "=" + i + "_" + i2 + "_" + imageLoaderConfig.isAutoRotate() + "_" + imageLoaderConfig.isExtractThumbnail();
    }
}
