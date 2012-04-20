.class Lcom/android/mms/ui/NewMessageActivity$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initUserGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    new-instance v1, Lmiui/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, v2}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    const v2, 0x7f0a0198

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 185
    invoke-virtual {v1, v4}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 186
    invoke-virtual {v1, v3}, Lmiui/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 187
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 188
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v4}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 190
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "guide_add_recipients"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method
