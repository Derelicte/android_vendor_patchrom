.class Lcom/android/thememanager/LocalThemeResourceListFragment$1;
.super Ljava/lang/Object;
.source "LocalThemeResourceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LocalThemeResourceListFragment;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #calls: Lcom/android/thememanager/LocalThemeResourceListFragment;->resolveIntent()V
    invoke-static {v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$000(Lcom/android/thememanager/LocalThemeResourceListFragment;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/thememanager/ThirdPartyPickersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "android.intent.extra.INTENT"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v1, "extra_resource_type"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    iget-wide v2, v2, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 75
    const-string v1, "extra_resolve_info_list"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$300(Lcom/android/thememanager/LocalThemeResourceListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    iget-wide v1, v1, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$400(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x304000a

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 88
    return-void

    .line 80
    :cond_0
    const-wide/16 v1, 0x4

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    iget-wide v3, v3, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
