.class Lcom/miui/backup/ui/BaseSelectList$3;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BaseSelectList;->startExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$3;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$3;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #calls: Lcom/miui/backup/ui/BaseSelectList;->pendingTask()V
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$000(Lcom/miui/backup/ui/BaseSelectList;)V

    .line 250
    return-void
.end method
