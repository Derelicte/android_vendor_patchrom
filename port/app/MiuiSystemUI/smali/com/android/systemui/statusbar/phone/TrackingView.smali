.class public Lcom/android/systemui/statusbar/phone/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;
.implements Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mTabs:[Landroid/view/View;

.field mToggleBar:Lmiui/widget/ScreenView;

.field public mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWidth:I

.field private mToggles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mTabs:[Landroid/view/View;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggles:Landroid/util/SparseArray;

    .line 54
    return-void
.end method

.method private addToggleToBar(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .local v0, toggle:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 200
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 201
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 206
    if-ltz p1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TrackingView;->OnToggleChanged(I)V

    .line 211
    return-void
.end method

.method private adjustBlankToggles()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 215
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleWidth:I

    if-nez v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/systemui/settings/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 218
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleWidth:I

    .line 221
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020183

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v3, padding:Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 224
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleWidth:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleWidth:I

    .line 230
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v5}, Lmiui/widget/ScreenView;->getVisibleRange()I

    move-result v4

    .line 231
    .local v4, toggleCountInOneScreenWidth:I
    if-lez v4, :cond_3

    .line 232
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int v2, v5, v4

    .line 233
    .local v2, extraToggleCount:I
    if-nez v2, :cond_1

    .line 236
    .local v0, blankToggleCount:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 237
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/TrackingView;->addToggleToBar(I)V

    goto :goto_0

    .line 233
    .end local v0           #blankToggleCount:I
    :cond_1
    sub-int v0, v4, v2

    goto :goto_0

    .line 241
    .restart local v0       #blankToggleCount:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 242
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lmiui/widget/ScreenView;->removeScreen(I)V

    goto :goto_1

    .line 245
    .end local v0           #blankToggleCount:I
    .end local v2           #extraToggleCount:I
    :cond_3
    return-void
.end method

.method private bindToggles()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->removeAllScreens()V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TrackingView;->addToggleToBar(I)V

    .line 185
    if-nez v1, :cond_1

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 190
    .end local v1           #id:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 182
    .restart local v1       #id:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1           #id:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrackingView;->adjustBlankToggles()V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 195
    return-void
.end method

.method private setupTab(IIZ)V
    .locals 2
    .parameter "id"
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, tab:Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 121
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrackingView$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/TrackingView$2;-><init>(Lcom/android/systemui/statusbar/phone/TrackingView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mTabs:[Landroid/view/View;

    aput-object v0, v1, p2

    .line 128
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 166
    .local v1, toggle:Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/systemui/settings/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-static {v0, p1}, Lcom/android/systemui/settings/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public OnToggleOrderChanged()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrackingView;->bindToggles()V

    .line 175
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 68
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 67
    .end local v0           #down:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    .restart local v0       #down:Z
    :pswitch_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingViewAttached()V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    const v1, 0x7f1000be

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/TrackingView;->setupTab(IIZ)V

    .line 87
    const v1, 0x7f1000bf

    invoke-direct {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/TrackingView;->setupTab(IIZ)V

    .line 88
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sTogglesInListStyle:Z

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/settings/ToggleManager;->setOnToggleChangedListener(Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/settings/ToggleManager;->setOnToggleOrderChangeListener(Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;)V

    .line 93
    const v1, 0x7f1000bc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ScreenView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView;->setScreenOffset(I)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1, v3}, Lmiui/widget/ScreenView;->setScrollWholeScreen(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 99
    .local v0, configuration:Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView;->setTouchSlop(I)V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrackingView;->bindToggles()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleManager;->performToggle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseAndUnlock()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sTogglesInListStyle:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrackingView;->adjustBlankToggles()V

    .line 63
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleManager;->startLongClickAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseAndUnlock()V

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrackingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TrackingView$1;-><init>(Lcom/android/systemui/statusbar/phone/TrackingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleManager;->refreshAll()V

    .line 116
    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 5
    .parameter "index"
    .parameter "animationDirection"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mTabs:[Landroid/view/View;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mTabs:[Landroid/view/View;

    aget-object v4, v1, v0

    if-ne v0, p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 132
    goto :goto_1

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTabClick(II)V

    .line 136
    if-ne p1, v2, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_2
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
