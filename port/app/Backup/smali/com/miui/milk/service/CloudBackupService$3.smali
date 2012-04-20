.class Lcom/miui/milk/service/CloudBackupService$3;
.super Ljava/lang/Object;
.source "CloudBackupService.java"

# interfaces
.implements Lcom/miui/milk/control/callback/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/service/CloudBackupService;->findlostContact(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/service/CloudBackupService;

.field final synthetic val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;


# direct methods
.method constructor <init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    iput-object p2, p0, Lcom/miui/milk/service/CloudBackupService$3;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 9
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 823
    const-string v2, "EXCEPTION"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "status"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    array-length v2, p1

    if-le v2, v6, :cond_0

    .line 829
    const-string v2, "status_code"

    aget-object v3, p1, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 831
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v2}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v3, v3, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 832
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #setter for: Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z
    invoke-static {v2, v5}, Lcom/miui/milk/service/CloudBackupService;->access$702(Lcom/miui/milk/service/CloudBackupService;Z)Z

    .line 857
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    #calls: Lcom/miui/milk/service/CloudBackupService;->callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    invoke-static {v2, v3}, Lcom/miui/milk/service/CloudBackupService;->access$800(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)I

    move-result v2

    return v2

    .line 833
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_1
    const-string v2, "SUCCESS"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 837
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string v2, "c_new"

    aget-object v3, p1, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v2}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v3, v3, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 844
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v2, "max"

    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    const-string v2, "current"

    aget-object v3, p1, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 847
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 848
    const-string v2, "description"

    aget-object v3, p1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_3
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v2}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v3, v3, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 853
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 854
    .local v1, cv2:Landroid/content/ContentValues;
    const-string v2, "current"

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$900(Lcom/miui/milk/service/CloudBackupService;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I
    invoke-static {v4}, Lcom/miui/milk/service/CloudBackupService;->access$1000(Lcom/miui/milk/service/CloudBackupService;)I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v3, v3

    aget-object v5, p1, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I
    invoke-static {v7}, Lcom/miui/milk/service/CloudBackupService;->access$1000(Lcom/miui/milk/service/CloudBackupService;)I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 855
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v2}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$3;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mTaskId:J
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$1100(Lcom/miui/milk/service/CloudBackupService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    goto/16 :goto_0
.end method
