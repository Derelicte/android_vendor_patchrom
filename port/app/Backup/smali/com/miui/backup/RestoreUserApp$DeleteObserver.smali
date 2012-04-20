.class Lcom/miui/backup/RestoreUserApp$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/RestoreUserApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/RestoreUserApp;


# direct methods
.method private constructor <init>(Lcom/miui/backup/RestoreUserApp;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/miui/backup/RestoreUserApp$DeleteObserver;->this$0:Lcom/miui/backup/RestoreUserApp;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/backup/RestoreUserApp;Lcom/miui/backup/RestoreUserApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/miui/backup/RestoreUserApp$DeleteObserver;-><init>(Lcom/miui/backup/RestoreUserApp;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 454
    packed-switch p2, :pswitch_data_0

    .line 463
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/RestoreUserApp$DeleteObserver;->this$0:Lcom/miui/backup/RestoreUserApp;

    #getter for: Lcom/miui/backup/RestoreUserApp;->mDeleteWaiting:Lcom/miui/backup/Waitor;
    invoke-static {v0}, Lcom/miui/backup/RestoreUserApp;->access$100(Lcom/miui/backup/RestoreUserApp;)Lcom/miui/backup/Waitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/Waitor;->finish()V

    .line 464
    return-void

    .line 456
    :pswitch_1
    iget-object v0, p0, Lcom/miui/backup/RestoreUserApp$DeleteObserver;->this$0:Lcom/miui/backup/RestoreUserApp;

    const/4 v1, 0x1

    #setter for: Lcom/miui/backup/RestoreUserApp;->mDeleteSuccess:Z
    invoke-static {v0, v1}, Lcom/miui/backup/RestoreUserApp;->access$002(Lcom/miui/backup/RestoreUserApp;Z)Z

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
