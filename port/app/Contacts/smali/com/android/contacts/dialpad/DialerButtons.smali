.class public Lcom/android/contacts/dialpad/DialerButtons;
.super Landroid/widget/LinearLayout;
.source "DialerButtons.java"


# instance fields
.field private mDialer:Lcom/android/contacts/activities/TwelveKeyDialer;

.field private mDownY:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 33
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 35
    .local v2, y:I
    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 38
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialerButtons;->mTracking:Z

    .line 39
    iput v2, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDownY:I

    goto :goto_0

    .line 43
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/contacts/dialpad/DialerButtons;->mTracking:Z

    if-eqz v3, :cond_0

    .line 44
    iget v3, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDownY:I

    sub-int v1, v2, v3

    .line 45
    .local v1, deltaY:I
    const/16 v3, 0x82

    if-le v1, v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDialer:Lcom/android/contacts/activities/TwelveKeyDialer;

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDialer:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 49
    :cond_1
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialerButtons;->mTracking:Z

    goto :goto_0

    .line 56
    .end local v1           #deltaY:I
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialerButtons;->mTracking:Z

    .line 57
    iput v4, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDownY:I

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTwelveKeyDialer(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialerButtons;->mDialer:Lcom/android/contacts/activities/TwelveKeyDialer;

    .line 28
    return-void
.end method
