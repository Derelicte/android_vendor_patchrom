.class Lcom/android/updater/MainFragment$5;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/MainFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/MainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 353
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$000(Lcom/android/updater/MainFragment;)Lcom/android/updater/customTypes/FullUpdateInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$100(Lcom/android/updater/MainFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-nez v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$000(Lcom/android/updater/MainFragment;)Lcom/android/updater/customTypes/FullUpdateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v2

    .line 358
    .local v2, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, modVersion:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 361
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #calls: Lcom/android/updater/MainFragment;->setNewUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    invoke-static {v3, v2}, Lcom/android/updater/MainFragment;->access$200(Lcom/android/updater/MainFragment;Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 376
    :goto_1
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    iget-object v3, v3, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 378
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #calls: Lcom/android/updater/MainFragment;->updateContent()V
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$500(Lcom/android/updater/MainFragment;)V

    .line 380
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mNeedDownloadCurrentRom:Z
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$400(Lcom/android/updater/MainFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #calls: Lcom/android/updater/MainFragment;->downloadCurrentRom()V
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$600(Lcom/android/updater/MainFragment;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$308(Lcom/android/updater/MainFragment;)I

    .line 364
    const v1, 0x7f050034

    .line 365
    .local v1, stringId:I
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$300(Lcom/android/updater/MainFragment;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 366
    const v1, 0x7f050035

    .line 370
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mNeedDownloadCurrentRom:Z
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$400(Lcom/android/updater/MainFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    iget-object v3, v3, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 373
    :cond_4
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    iget-object v3, v3, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/android/updater/utils/SysUtils;->showBubble(Landroid/content/Context;I)V

    goto :goto_1

    .line 367
    :cond_5
    iget-object v3, p0, Lcom/android/updater/MainFragment$5;->this$0:Lcom/android/updater/MainFragment;

    #getter for: Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I
    invoke-static {v3}, Lcom/android/updater/MainFragment;->access$300(Lcom/android/updater/MainFragment;)I

    move-result v3

    if-le v3, v5, :cond_3

    .line 368
    const v1, 0x7f050036

    goto :goto_2
.end method
