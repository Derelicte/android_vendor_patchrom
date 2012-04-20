.class Lcom/android/phone/TextToggleButton;
.super Landroid/widget/ToggleButton;
.source "MiuiInCallTouchUi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 867
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 862
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 863
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 859
    return-void
.end method


# virtual methods
.method public refreshDrawableState()V
    .locals 3

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 872
    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 873
    .local v0, checked:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f0e003d

    :goto_1
    invoke-static {p0, v2, v1}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 880
    .end local v0           #checked:Z
    :goto_2
    invoke-super {p0}, Landroid/widget/ToggleButton;->refreshDrawableState()V

    .line 881
    return-void

    .line 872
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 873
    .restart local v0       #checked:Z
    :cond_2
    const v1, 0x7f0e003b

    goto :goto_1

    .line 877
    .end local v0           #checked:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/TextToggleButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e003c

    invoke-static {p0, v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_2
.end method
