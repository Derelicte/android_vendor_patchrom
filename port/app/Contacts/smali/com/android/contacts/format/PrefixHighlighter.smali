.class public Lcom/android/contacts/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "prefixHighlightColor"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v0

    .line 54
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 59
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    .local v1, result:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v3, p2

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 63
    .end local v1           #result:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
