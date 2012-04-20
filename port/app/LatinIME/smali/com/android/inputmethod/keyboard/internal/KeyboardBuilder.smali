.class public Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KP:",
        "Lcom/android/inputmethod/keyboard/internal/KeyboardParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

.field private mCurrentY:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

.field private mLeftEdge:Z

.field protected final mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKP;"
        }
    .end annotation
.end field

.field protected final mResources:Landroid/content/res/Resources;

.field private mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

.field private mTopEdge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TKP;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;,"TKP;"
    const/4 v2, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 136
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 139
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 140
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    .line 241
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    .local v0, res:Landroid/content/res/Resources;
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    .line 244
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 246
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 248
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->setTouchPositionCorrectionData(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 250
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    .line 251
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    .line 252
    return-void
.end method

.method private addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .locals 1
    .parameter "width"
    .parameter "row"

    .prologue
    .line 808
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->advanceXPos(F)V

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 811
    return-void
.end method

.method private static checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "tag"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    return-void

    .line 764
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v0
.end method

.method private endKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 793
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 794
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 801
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 802
    return-void
.end method

.method private endKeyboard()V
    .locals 0

    .prologue
    .line 805
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    return-void
.end method

.method private endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .locals 3
    .parameter "row"

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "orphant end row tag"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 784
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 787
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 788
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 790
    return-void
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 815
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 822
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 817
    .restart local p3
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isFractionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    goto :goto_0

    .line 819
    :cond_2
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isDimensionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_0
.end method

.method public static getEnumValue(Landroid/content/res/TypedArray;II)I
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 827
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 832
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 829
    .restart local p2
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_0
.end method

.method private static isDimensionValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 840
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFractionValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 836
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntegerValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 844
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStringValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 848
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z
    .locals 4
    .parameter "a"
    .parameter "index"
    .parameter "intValue"
    .parameter "strValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 713
    .local v0, v:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v1

    .line 716
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 717
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq p2, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 718
    :cond_2
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->isStringValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 719
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 721
    goto :goto_0
.end method

.method private parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .locals 2
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v1, 0x1

    .line 614
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 615
    .local v0, selected:Z
    if-nez p2, :cond_1

    .line 617
    if-eqz v0, :cond_0

    .end local p3
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 622
    :goto_1
    return v0

    .restart local p3
    :cond_0
    move p3, v1

    .line 617
    goto :goto_0

    .line 620
    :cond_1
    if-eqz v0, :cond_2

    .end local p3
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_1

    .restart local p3
    :cond_2
    move p3, v1

    goto :goto_2
.end method

.method private parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 21
    .parameter "parser"

    .prologue
    .line 626
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 627
    .local v9, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    if-nez v9, :cond_0

    .line 628
    const/16 v16, 0x1

    .line 687
    :goto_0
    return v16

    .line 630
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    sget-object v20, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Case:[I

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 633
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    :try_start_0
    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v19, v0

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v3, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z

    move-result v13

    .line 635
    .local v13, modeMatched:Z
    const/16 v18, 0x1

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    .line 637
    .local v14, navigateActionMatched:Z
    const/16 v18, 0x2

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v15

    .line 639
    .local v15, passwordInputMatched:Z
    const/16 v18, 0x3

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v7

    .line 641
    .local v7, hasSettingsKeyMatched:Z
    const/16 v18, 0x4

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v6

    .line 643
    .local v6, f2KeyModeMatched:Z
    const/16 v18, 0x5

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    .line 645
    .local v4, clobberSettingsKeyMatched:Z
    const/16 v18, 0x6

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v17

    .line 647
    .local v17, shortcutKeyEnabledMatched:Z
    const/16 v18, 0x7

    iget-boolean v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v8

    .line 653
    .local v8, hasShortcutKeyMatched:Z
    const/16 v18, 0x8

    iget v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v10

    .line 655
    .local v10, imeActionMatched:Z
    const/16 v18, 0x9

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v12

    .line 657
    .local v12, localeCodeMatched:Z
    const/16 v18, 0xa

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v11

    .line 659
    .local v11, languageCodeMatched:Z
    const/16 v18, 0xb

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 661
    .local v5, countryCodeMatched:Z
    if-eqz v13, :cond_1

    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    if-eqz v17, :cond_1

    if-eqz v8, :cond_1

    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    if-eqz v11, :cond_1

    if-eqz v5, :cond_1

    const/16 v16, 0x1

    .line 687
    .local v16, selected:Z
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 661
    .end local v16           #selected:Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 687
    .end local v4           #clobberSettingsKeyMatched:Z
    .end local v5           #countryCodeMatched:Z
    .end local v6           #f2KeyModeMatched:Z
    .end local v7           #hasSettingsKeyMatched:Z
    .end local v8           #hasShortcutKeyMatched:Z
    .end local v10           #imeActionMatched:Z
    .end local v11           #languageCodeMatched:Z
    .end local v12           #localeCodeMatched:Z
    .end local v13           #modeMatched:Z
    .end local v14           #navigateActionMatched:Z
    .end local v15           #passwordInputMatched:Z
    .end local v17           #shortcutKeyEnabledMatched:Z
    :catchall_0
    move-exception v18

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v18
.end method

.method private parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .locals 1
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-nez p2, :cond_0

    .line 736
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 740
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 738
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0
.end method

.method private parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 7
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v6, 0x0

    .line 531
    if-eqz p3, :cond_0

    .line 532
    const-string v3, "include"

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 552
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Include:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 536
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 538
    .local v1, keyboardLayout:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    const-string v3, "include"

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 541
    if-nez v1, :cond_1

    .line 542
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v4, "No keyboardLayout attribute in <include/>"

    invoke-direct {v3, v4, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v3

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 547
    .local v2, parserForInclude:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, v2, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3
.end method

.method private parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 522
    return-void
.end method

.method private parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 527
    return-void
.end method

.method private parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 6
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_0

    .line 496
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 505
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V

    .line 502
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 503
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 5
    .parameter "parser"
    .parameter "skip"

    .prologue
    .line 744
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_KeyStyle:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 746
    .local v1, keyStyleAttr:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 749
    .local v0, keyAttrs:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "<key-style/> needs styleName attribute"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 756
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 752
    :cond_0
    if-nez p2, :cond_1

    .line 753
    :try_start_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 756
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 758
    return-void
.end method

.method private parseKeyboard(Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 300
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 301
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Keyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 304
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startKeyboard()V

    .line 305
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 312
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    return-void

    .line 308
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v3, "Keyboard"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .parameter "parser"

    .prologue
    .line 339
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 340
    .local v1, displayWidth:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    const/high16 v11, 0x7f01

    const v12, 0x7f0e0003

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 343
    .local v3, keyboardAttr:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 346
    .local v2, keyAttr:Landroid/content/res/TypedArray;
    :try_start_0
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 347
    .local v0, displayHeight:I
    const/4 v8, 0x2

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v4, v8

    .line 349
    .local v4, keyboardHeight:I
    const/4 v8, 0x3

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    invoke-static {v3, v8, v0, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v5, v8

    .line 351
    .local v5, maxKeyboardHeight:I
    const/4 v8, 0x4

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    invoke-static {v3, v8, v0, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v6, v8

    .line 353
    .local v6, minKeyboardHeight:I
    if-gez v6, :cond_0

    .line 356
    const/4 v8, 0x4

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-static {v3, v8, v1, v9}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    neg-int v6, v8

    .line 359
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 362
    .local v7, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    .line 364
    iget-object v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v8, v8, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    .line 365
    const/4 v8, 0x5

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    .line 367
    const/4 v8, 0x6

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    .line 369
    const/4 v8, 0x7

    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v9, v9, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    .line 372
    iget v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalCenterPadding:I

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    .line 374
    const/16 v8, 0x10

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    iget v10, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    div-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    invoke-static {v2, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    .line 377
    const/16 v8, 0x9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    .line 379
    const/16 v8, 0xa

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    .line 381
    iget v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    sub-int/2addr v8, v9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    sub-int/2addr v8, v9

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    .line 383
    const/16 v8, 0x8

    iget v9, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    iget v10, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    invoke-static {v3, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    .line 387
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    .line 389
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    .line 391
    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMiniKeyboardColumn:I

    .line 394
    iget-object v8, v7, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v8, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->loadIcons(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    return-void

    .line 396
    .end local v0           #displayHeight:I
    .end local v4           #keyboardHeight:I
    .end local v5           #maxKeyboardHeight:I
    .end local v6           #minKeyboardHeight:I
    .end local v7           #params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method private parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 5
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    .line 405
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 406
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    move-result-object v1

    .line 410
    .local v1, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    if-nez p2, :cond_1

    .line 411
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 412
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 413
    .end local v1           #row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    :cond_2
    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 415
    :cond_3
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 417
    :cond_4
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 420
    :cond_5
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 422
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 423
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 424
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 425
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKeyboard()V

    .line 438
    .end local v2           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 427
    .restart local v2       #tag:Ljava/lang/String;
    :cond_8
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "merge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 431
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 434
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method public static parseKeyboardLocale(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 317
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 318
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v3, :cond_0

    const-string v2, ""

    .line 335
    :goto_0
    return-object v2

    .line 320
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    .line 321
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 322
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, tag:Ljava/lang/String;
    const-string v6, "Keyboard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 326
    .local v1, keyboardAttr:Landroid/content/res/TypedArray;
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, locale:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 331
    .end local v1           #keyboardAttr:Landroid/content/res/TypedArray;
    .end local v2           #locale:Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v7, "Keyboard"

    invoke-direct {v6, v3, v7}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v6

    .line 335
    .end local v5           #tag:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 558
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 559
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, tag:Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    if-nez p2, :cond_2

    .line 562
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 573
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 564
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 568
    :cond_3
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "Included keyboard layout must have <merge> root element"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
.end method

.method private parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .locals 5
    .parameter "parser"

    .prologue
    .line 441
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 444
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v2, "horizontalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 446
    :cond_0
    const/16 v1, 0xa

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v2, "verticalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_1
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 458
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 459
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 462
    :cond_1
    const-string v2, "Spacer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 464
    :cond_2
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 466
    :cond_3
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 468
    :cond_4
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 471
    :cond_5
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    .line 473
    .end local v1           #tag:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 474
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 475
    .restart local v1       #tag:Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 477
    if-nez p3, :cond_7

    .line 478
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 491
    .end local v1           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 480
    .restart local v1       #tag:Ljava/lang/String;
    :cond_8
    const-string v2, "case"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 484
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 6
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_0

    .line 510
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/Key$Spacer;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V

    .line 514
    .local v0, spacer:Lcom/android/inputmethod/keyboard/Key$Spacer;
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 515
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 5
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v4, 0x1

    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, selected:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    if-eq v0, v4, :cond_6

    .line 591
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 592
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, tag:Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v3, p3

    goto :goto_1

    .line 595
    :cond_2
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 596
    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_3
    move v3, p3

    goto :goto_2

    .line 598
    :cond_4
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 600
    .end local v2           #tag:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 602
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 610
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    return-void

    .line 606
    .restart local v2       #tag:Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 578
    return-void
.end method

.method private parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 583
    return-void
.end method

.method private static setTouchPositionCorrectionData(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 7
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 255
    const/4 v3, 0x0

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    const/high16 v5, 0x7f01

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 257
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 259
    .local v2, resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    if-nez v2, :cond_0

    .line 261
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_1

    .line 262
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "touchPositionCorrectionData is not defined"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, data:[Ljava/lang/String;
    iget-object v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->load([Ljava/lang/String;)V

    .line 268
    .end local v1           #data:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private startKeyboard()V
    .locals 2

    .prologue
    .line 768
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 770
    return-void
.end method

.method private startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .locals 1
    .parameter "row"

    .prologue
    .line 773
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 774
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 777
    return-void
.end method

.method private static stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 725
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 726
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    const/4 v4, 0x1

    .line 729
    .end local v1           #elem:Ljava/lang/String;
    :goto_1
    return v4

    .line 725
    .restart local v1       #elem:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            ")",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
            "<TKP;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iput-object p1, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 272
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->getXmlId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 274
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboard(Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 284
    return-object p0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 278
    :catch_1
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setTouchPositionCorrectionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 288
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->setEnabled(Z)V

    .line 289
    return-void
.end method
