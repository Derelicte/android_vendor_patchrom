.class Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricView"
.end annotation


# instance fields
.field private final HTML_BR:Ljava/lang/CharSequence;

.field private final INVALID_LYRIC_SHOT:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

.field private mCurrentLine:I

.field private final mLineExtraSpacing:F

.field private mLyricArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricBuilder:Ljava/lang/StringBuilder;

.field private final mLyricViewAfter:Landroid/widget/TextView;

.field private final mLyricViewBefore:Landroid/widget/TextView;

.field private final mLyricViewCurrent:Landroid/widget/TextView;

.field private mOffsetLineNumArr:[I

.field private mTimeArr:[I

.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 708
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    const/16 v2, -0xa

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->INVALID_LYRIC_SHOT:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    .line 696
    const-string v0, "<br/>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    .line 709
    const v0, 0x7f07003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    .line 710
    const v0, 0x7f07003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    .line 711
    const v0, 0x7f07003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    .line 713
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLineExtraSpacing:F

    .line 714
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 715
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 716
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    .line 719
    return-void
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;FID)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 691
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->getScrollHeight(FID)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->setLyricArr(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->hasLyric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->setTimeArr([I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->reset()V

    return-void
.end method

.method private getScrollHeight(FID)I
    .locals 9
    .parameter "lineHeight"
    .parameter "line"
    .parameter "percent"

    .prologue
    .line 798
    add-int/lit8 v0, p2, 0x4

    .line 800
    .local v0, absIndex:I
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 801
    :cond_0
    const/4 v3, -0x1

    .line 806
    :goto_0
    return v3

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    sub-int v1, v3, v4

    .line 805
    .local v1, lineCount:I
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v2, v3, -0x4

    .line 806
    .local v2, offsetLine:I
    float-to-double v3, p1

    int-to-double v5, v2

    int-to-double v7, v1

    mul-double/2addr v7, p3

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v3, v3

    goto :goto_0
.end method

.method private hasLyric()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 722
    const/16 v0, -0xa

    iput v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    .line 724
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->setHintText(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method private setLyricArr(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    .line 729
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->decorateLyricWithHtml(Ljava/util/ArrayList;)V

    .line 732
    :cond_0
    return-void
.end method

.method private setTimeArr([I)V
    .locals 0
    .parameter "timeArr"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    .line 736
    return-void
.end method


# virtual methods
.method public getAccurateLineHeight()F
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLineExtraSpacing:F

    return v0
.end method

.method public getLyricShot(J)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;
    .locals 13
    .parameter "time"

    .prologue
    const-wide/16 v11, 0x0

    .line 770
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    if-nez v7, :cond_0

    .line 771
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->INVALID_LYRIC_SHOT:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    .line 794
    :goto_0
    return-object v7

    .line 773
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-long v7, v7

    cmp-long v7, v7, p1

    if-lez v7, :cond_1

    .line 774
    new-instance v7, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9, v11, v12}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V

    .line 777
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    array-length v7, v7

    if-ge v0, v7, :cond_4

    .line 778
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    aget v6, v7, v0

    .line 779
    .local v6, timeThis:I
    int-to-long v7, v6

    cmp-long v7, v7, p1

    if-lez v7, :cond_3

    .line 780
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    add-int/lit8 v8, v0, -0x1

    aget v5, v7, v8

    .line 781
    .local v5, timePrev:I
    const-wide/16 v1, 0x0

    .line 782
    .local v1, percent:D
    if-le v6, v5, :cond_2

    .line 783
    int-to-long v7, v5

    sub-long v7, p1, v7

    long-to-double v7, v7

    sub-int v9, v6, v5

    int-to-double v9, v9

    div-double v1, v7, v9

    .line 785
    :cond_2
    new-instance v7, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    add-int/lit8 v9, v0, -0x1

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V

    goto :goto_0

    .line 777
    .end local v1           #percent:D
    .end local v5           #timePrev:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    .end local v6           #timeThis:I
    :cond_4
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    int-to-long v3, v7

    .line 789
    .local v3, timeLast:J
    sub-long v7, p1, v3

    const-wide/16 v9, 0x1f40

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 790
    sub-long v7, p1, v3

    long-to-double v7, v7

    const-wide v9, 0x40bf400000000000L

    div-double v1, v7, v9

    .line 791
    .restart local v1       #percent:D
    new-instance v7, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    iget-object v9, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V

    goto :goto_0

    .line 794
    .end local v1           #percent:D
    :cond_5
    new-instance v7, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    iget-object v9, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    array-length v9, v9

    invoke-direct {v7, v8, v9, v11, v12}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V

    goto :goto_0
.end method

.method public getOffsetNumArr()[I
    .locals 9

    .prologue
    .line 743
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    if-lez v7, :cond_2

    .line 744
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 745
    .local v6, temp:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    const/4 v5, -0x4

    .line 748
    .local v5, start:I
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 749
    .local v0, end:I
    sub-int v7, v0, v5

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [I

    .line 751
    .local v3, ret:[I
    move v1, v5

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 752
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    .line 753
    .local v4, spanned:Ljava/lang/CharSequence;
    if-ltz v1, :cond_0

    .line 754
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #spanned:Ljava/lang/CharSequence;
    check-cast v4, Ljava/lang/CharSequence;

    .line 756
    .restart local v4       #spanned:Ljava/lang/CharSequence;
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 758
    sub-int v2, v1, v5

    .line 761
    .local v2, offset:I
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v3, v2

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    .end local v2           #offset:I
    .end local v4           #spanned:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #ret:[I
    .end local v5           #start:I
    .end local v6           #temp:Ljava/lang/CharSequence;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "hint"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    return-void
.end method

.method public updateCurrentLine(I)V
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, 0x0

    .line 810
    iget v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    if-eq p1, v4, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->hasLyric()Z

    move-result v4

    if-nez v4, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    if-nez v4, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->getOffsetNumArr()[I

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    .line 817
    :cond_2
    iput p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    .line 818
    const/4 v3, -0x4

    .line 819
    .local v3, startLine:I
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 820
    .local v2, size:I
    if-le p1, v2, :cond_3

    .line 821
    move p1, v2

    .line 823
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 824
    move v1, v3

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_5

    .line 825
    if-gez v1, :cond_4

    .line 826
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 824
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 828
    :cond_4
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 833
    :cond_5
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 834
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 837
    :cond_6
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    if-lt p1, v2, :cond_7

    .line 839
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :cond_7
    if-ltz p1, :cond_9

    .line 844
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 845
    .local v0, current:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 846
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v7, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 848
    :cond_8
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .end local v0           #current:Ljava/lang/CharSequence;
    :cond_9
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 852
    add-int/lit8 v1, p1, 0x1

    :goto_3
    if-ge v1, v2, :cond_a

    .line 853
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 856
    :cond_a
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
