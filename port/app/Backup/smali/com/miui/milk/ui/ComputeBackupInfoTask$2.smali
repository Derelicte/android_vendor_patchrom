.class Lcom/miui/milk/ui/ComputeBackupInfoTask$2;
.super Ljava/lang/Object;
.source "ComputeBackupInfoTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ComputeBackupInfoTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    .line 82
    return-void
.end method
