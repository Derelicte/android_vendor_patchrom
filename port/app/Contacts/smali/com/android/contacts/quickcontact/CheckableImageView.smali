.class public Lcom/android/contacts/quickcontact/CheckableImageView;
.super Landroid/widget/LinearLayout;
.source "CheckableImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/contacts/quickcontact/CheckableImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 46
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 47
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/CheckableImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/android/contacts/quickcontact/CheckableImageView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->mergeDrawableStates([I[I)[I

    .line 50
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mChecked:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/CheckableImageView;->refreshDrawableState()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 74
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/CheckableImageView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
