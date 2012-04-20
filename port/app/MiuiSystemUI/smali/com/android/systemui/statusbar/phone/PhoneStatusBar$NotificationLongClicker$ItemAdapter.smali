.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisabledColor:I

.field private mDisabledItem:I

.field private mEnabledColor:Landroid/content/res/ColorStateList;

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2315
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    .line 2316
    const v0, 0x1020014

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 2310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledItem:I

    .line 2317
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2330
    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    .line 2332
    .local v2, view:Landroid/widget/TextView;
    if-nez v2, :cond_0

    .line 2333
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2335
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #view:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 2337
    .restart local v2       #view:Landroid/widget/TextView;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledColor:I

    if-nez v3, :cond_0

    .line 2338
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2339
    .local v0, alpha:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mEnabledColor:Landroid/content/res/ColorStateList;

    .line 2340
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mEnabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x64

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mEnabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledColor:I

    .line 2346
    .end local v0           #alpha:I
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledItem:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2350
    invoke-super {p0, p1, v2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 2346
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mEnabledColor:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2325
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledItem:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisabledItem(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 2320
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->mDisabledItem:I

    .line 2321
    return-void
.end method
