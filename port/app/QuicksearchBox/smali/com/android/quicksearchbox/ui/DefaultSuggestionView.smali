.class public Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/DefaultSuggestionView$Factory;,
        Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAsyncIcon1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field private mAsyncIcon2:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "QSB.DefaultSuggestionView"

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "QSB.DefaultSuggestionView"

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-string v0, "QSB.DefaultSuggestionView"

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "str"
    .parameter "suggestion"

    .prologue
    .line 128
    const-string v1, "html"

    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, isHtml:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->looksLikeHtml(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 132
    .end local p1
    :cond_0
    return-object p1
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    .local v6, text:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 121
    .local v4, colors:Landroid/content/res/ColorStateList;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 124
    return-object v6
.end method

.method private looksLikeHtml(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, c:C
    const/16 v3, 0x3e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 138
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "v"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 5
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    .local v0, text1:Ljava/lang/CharSequence;
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, text2:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 98
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 101
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->setText2(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 116
    return-void

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 70
    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mText2:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$1;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$1;-><init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 83
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 84
    return-void
.end method
