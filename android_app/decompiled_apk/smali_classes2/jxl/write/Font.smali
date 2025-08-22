.class public Ljxl/write/Font;
.super Ljxl/write/WritableFont;
.source "Font.java"


# static fields
.field public static final ARIAL:Ljxl/write/WritableFont$FontName;

.field public static final BOLD:Ljxl/write/WritableFont$BoldStyle;

.field public static final DOUBLE:Ljxl/format/UnderlineStyle;

.field public static final DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

.field public static final NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

.field public static final NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

.field public static final NO_UNDERLINE:Ljxl/format/UnderlineStyle;

.field public static final SINGLE:Ljxl/format/UnderlineStyle;

.field public static final SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

.field public static final SUBSCRIPT:Ljxl/format/ScriptStyle;

.field public static final SUPERSCRIPT:Ljxl/format/ScriptStyle;

.field public static final TIMES:Ljxl/write/WritableFont$FontName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sput-object v0, Ljxl/write/Font;->ARIAL:Ljxl/write/WritableFont$FontName;

    .line 45
    sget-object v0, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sput-object v0, Ljxl/write/Font;->TIMES:Ljxl/write/WritableFont$FontName;

    .line 53
    sget-object v0, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sput-object v0, Ljxl/write/Font;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    .line 58
    sget-object v0, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sput-object v0, Ljxl/write/Font;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    .line 64
    sget-object v0, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sput-object v0, Ljxl/write/Font;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    .line 70
    sget-object v0, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    sput-object v0, Ljxl/write/Font;->SINGLE:Ljxl/format/UnderlineStyle;

    .line 75
    sget-object v0, Ljxl/format/UnderlineStyle;->DOUBLE:Ljxl/format/UnderlineStyle;

    sput-object v0, Ljxl/write/Font;->DOUBLE:Ljxl/format/UnderlineStyle;

    .line 80
    sget-object v0, Ljxl/format/UnderlineStyle;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    sput-object v0, Ljxl/write/Font;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    .line 86
    sget-object v0, Ljxl/format/UnderlineStyle;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    sput-object v0, Ljxl/write/Font;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    .line 90
    sget-object v0, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    sput-object v0, Ljxl/write/Font;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    .line 91
    sget-object v0, Ljxl/format/ScriptStyle;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    sput-object v0, Ljxl/write/Font;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    .line 92
    sget-object v0, Ljxl/format/ScriptStyle;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    sput-object v0, Ljxl/write/Font;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V
    .locals 0

    .line 164
    invoke-direct/range {p0 .. p5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V
    .locals 0

    .line 187
    invoke-direct/range {p0 .. p6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V
    .locals 0

    .line 213
    invoke-direct/range {p0 .. p7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    return-void
.end method
