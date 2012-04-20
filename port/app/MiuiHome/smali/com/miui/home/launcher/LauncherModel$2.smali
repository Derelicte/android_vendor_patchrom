.class final Lcom/miui/home/launcher/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$operations:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$authority:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$operations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$authority:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$2;->val$operations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "applyBatch failed with RemoteException."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, e:Landroid/content/OperationApplicationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "applyBatch failed with OperationApplicationException."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
