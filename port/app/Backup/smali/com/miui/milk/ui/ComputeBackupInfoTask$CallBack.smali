.class Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;
.super Ljava/lang/Object;
.source "ComputeBackupInfoTask.java"

# interfaces
.implements Lcom/miui/milk/control/callback/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ComputeBackupInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;


# direct methods
.method private constructor <init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;Lcom/miui/milk/ui/ComputeBackupInfoTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "EXCEPTION"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I
    invoke-static {v0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->access$302(Lcom/miui/milk/ui/ComputeBackupInfoTask;I)I

    .line 237
    :cond_0
    return v2
.end method
