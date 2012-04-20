.class Lcom/android/contacts/activities/TwelveKeyDialer$1;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 550
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {v0, v1}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 552
    invoke-virtual {v0, v3}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 553
    invoke-virtual {v0, v3}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 554
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 555
    return-void
.end method
