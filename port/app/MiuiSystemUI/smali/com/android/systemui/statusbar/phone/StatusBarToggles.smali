.class public Lcom/android/systemui/statusbar/phone/StatusBarToggles;
.super Landroid/widget/LinearLayout;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;
.implements Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;


# instance fields
.field private mID2Toggle:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mManualBrightness:Landroid/widget/SeekBar;

.field private mManualBrightnessPanel:Landroid/view/View;

.field private mResource:Landroid/content/res/Resources;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
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
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    .line 55
    return-void
.end method

.method private bindToggle(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "toggle"
    .parameter "id"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 161
    invoke-static {p2}, Lcom/android/systemui/settings/ToggleManager;->getName(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->OnToggleChanged(I)V

    .line 165
    return-void
.end method

.method private bindToggles()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, toggleIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->bindToggle(Landroid/widget/TextView;I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const v2, 0x7f10005c

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->bindToggle(Landroid/widget/TextView;I)V

    .line 156
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, toggle:Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/settings/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-static {v0, p1}, Lcom/android/systemui/settings/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 135
    if-ne p1, v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightnessPanel:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v4}, Lcom/android/systemui/settings/ToggleManager;->isAutoBrightnessMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->getActualBrightnessProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 136
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public OnToggleOrderChanged()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->bindToggles()V

    .line 145
    return-void
.end method

.method public getActualBrightnessProgress()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleManager;->getBrightnessLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 61
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mResource:Landroid/content/res/Resources;

    if-nez v4, :cond_3

    .line 62
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mResource:Landroid/content/res/Resources;

    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v4, p0}, Lcom/android/systemui/settings/ToggleManager;->setOnToggleChangedListener(Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;)V

    .line 64
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v4, p0}, Lcom/android/systemui/settings/ToggleManager;->setOnToggleOrderChangeListener(Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;)V

    .line 66
    const v4, 0x7f10005d

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightnessPanel:Landroid/view/View;

    .line 67
    const v4, 0x7f10005e

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    .line 68
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    sget v5, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 69
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->getActualBrightnessProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarToggles$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarToggles;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f10005a

    if-ne v4, v5, :cond_1

    move-object v3, v2

    .line 91
    check-cast v3, Landroid/view/ViewGroup;

    .line 92
    .local v3, viewGroup:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 93
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f10005b

    if-ne v4, v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1           #j:I
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v2           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->bindToggles()V

    .line 102
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleManager;->performToggle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseAndUnlock()V

    .line 112
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleManager;->startLongClickAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseAndUnlock()V

    .line 119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
