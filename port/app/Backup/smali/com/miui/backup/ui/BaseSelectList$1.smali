.class Lcom/miui/backup/ui/BaseSelectList$1;
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
    .line 229
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 232
    return-void
.end method
