package jxl;

import jxl.biff.HeaderFooter;

/* loaded from: classes2.dex */
public final class HeaderFooter extends jxl.biff.HeaderFooter {

    public static class Contents extends HeaderFooter.Contents {
        Contents() {
        }

        Contents(String str) {
            super(str);
        }

        Contents(Contents contents) {
            super(contents);
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void append(String str) {
            super.append(str);
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleBold() {
            super.toggleBold();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleUnderline() {
            super.toggleUnderline();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleItalics() {
            super.toggleItalics();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleStrikethrough() {
            super.toggleStrikethrough();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleDoubleUnderline() {
            super.toggleDoubleUnderline();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleSuperScript() {
            super.toggleSuperScript();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleSubScript() {
            super.toggleSubScript();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleOutline() {
            super.toggleOutline();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void toggleShadow() {
            super.toggleShadow();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void setFontName(String str) {
            super.setFontName(str);
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public boolean setFontSize(int i) {
            return super.setFontSize(i);
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendPageNumber() {
            super.appendPageNumber();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendTotalPages() {
            super.appendTotalPages();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendDate() {
            super.appendDate();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendTime() {
            super.appendTime();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendWorkbookName() {
            super.appendWorkbookName();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void appendWorkSheetName() {
            super.appendWorkSheetName();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public void clear() {
            super.clear();
        }

        @Override // jxl.biff.HeaderFooter.Contents
        public boolean empty() {
            return super.empty();
        }
    }

    public HeaderFooter() {
    }

    public HeaderFooter(HeaderFooter headerFooter) {
        super(headerFooter);
    }

    public HeaderFooter(String str) {
        super(str);
    }

    @Override // jxl.biff.HeaderFooter
    public String toString() {
        return super.toString();
    }

    public Contents getRight() {
        return (Contents) super.getRightText();
    }

    public Contents getCentre() {
        return (Contents) super.getCentreText();
    }

    public Contents getLeft() {
        return (Contents) super.getLeftText();
    }

    @Override // jxl.biff.HeaderFooter
    public void clear() {
        super.clear();
    }

    @Override // jxl.biff.HeaderFooter
    protected HeaderFooter.Contents createContents() {
        return new Contents();
    }

    @Override // jxl.biff.HeaderFooter
    protected HeaderFooter.Contents createContents(String str) {
        return new Contents(str);
    }

    @Override // jxl.biff.HeaderFooter
    protected HeaderFooter.Contents createContents(HeaderFooter.Contents contents) {
        return new Contents((Contents) contents);
    }
}
