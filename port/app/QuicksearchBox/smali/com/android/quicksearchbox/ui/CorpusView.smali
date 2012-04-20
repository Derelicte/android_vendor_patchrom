.class public Lcom/android/quicksearchbox/ui/CorpusView;
.super Landroid/widget/RelativeLayout;
.source "CorpusView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/quicksearchbox/ui/CorpusView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 85
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 86
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/CorpusView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/android/quicksearchbox/ui/CorpusView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/ui/CorpusView;->mergeDrawableStates([I[I)[I

    .line 89
    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/CorpusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mIcon:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/CorpusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mLabel:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mChecked:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/CorpusView;->refreshDrawableState()V

    .line 77
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CorpusView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/CorpusView;->setChecked(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
