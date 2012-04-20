.class Lcom/miui/backup/ui/BaseSelectList$2;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BaseSelectList;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 224
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$2;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$2;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList;->switchToProgressPage()V

    .line 227
    return-void
.end method
