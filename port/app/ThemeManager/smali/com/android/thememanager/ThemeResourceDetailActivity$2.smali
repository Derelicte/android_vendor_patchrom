.class Lcom/android/thememanager/ThemeResourceDetailActivity$2;
.super Lcom/android/thememanager/ThemeOperationHandler;
.source "ThemeResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;->getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lmiui/app/resourcebrowser/view/ResourceOperationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity;Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/ThemeResourceState;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/thememanager/ThemeOperationHandler;-><init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/ThemeResourceState;)V

    return-void
.end method


# virtual methods
.method public handleApplyEvent()V
    .locals 7

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->getResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeResourceState;

    .line 134
    .local v0, resource:Lcom/android/thememanager/ThemeResourceState;
    iget-object v1, v0, Lcom/android/thememanager/ThemeResourceState;->applyParameters:Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->getApplyComponentFlags()J
    invoke-static {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$000(Lcom/android/thememanager/ThemeResourceDetailActivity;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;->applyComponentFlags:J

    .line 135
    iget-object v2, v0, Lcom/android/thememanager/ThemeResourceState;->applyParameters:Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;

    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J
    invoke-static {v1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$100(Lcom/android/thememanager/ThemeResourceDetailActivity;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;->needRemoveAllOldComponents:Z

    .line 136
    invoke-super {p0}, Lcom/android/thememanager/ThemeOperationHandler;->handleApplyEvent()V

    .line 137
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleDeleteEvent()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->delete()V
    invoke-static {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$500(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    .line 160
    invoke-super {p0}, Lcom/android/thememanager/ThemeOperationHandler;->handleDeleteEvent()V

    .line 161
    return-void
.end method

.method public handleDownloadEvent()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->download()V
    invoke-static {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$300(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    .line 148
    invoke-super {p0}, Lcom/android/thememanager/ThemeOperationHandler;->handleDownloadEvent()V

    .line 149
    return-void
.end method

.method public handleMagicEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    const-class v2, Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string v3, "key_theme_state"

    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getRealResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeResourceState;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/thememanager/ThemeResourceDetailActivity;->overridePendingTransition(II)V

    .line 183
    return-void
.end method

.method public handlePickEvent()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->pick()V
    invoke-static {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$200(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    .line 142
    invoke-super {p0}, Lcom/android/thememanager/ThemeOperationHandler;->handlePickEvent()V

    .line 143
    return-void
.end method

.method public handleResourceDownloadFailedEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadFilePath"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->downloadFailed(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$700(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1}, Lcom/android/thememanager/ThemeOperationHandler;->handleResourceDownloadFailedEvent(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public handleResourceDownloadSuccessedEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "downloadFilePath"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->downloadSuccess(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$600(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Lcom/android/thememanager/ThemeOperationHandler;->handleResourceDownloadSuccessedEvent(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public handleUpdateEvent()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->update()V
    invoke-static {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$400(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    .line 154
    invoke-super {p0}, Lcom/android/thememanager/ThemeOperationHandler;->handleUpdateEvent()V

    .line 155
    return-void
.end method
