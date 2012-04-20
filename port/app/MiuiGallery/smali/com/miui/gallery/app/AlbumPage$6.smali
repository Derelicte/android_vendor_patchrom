.class Lcom/miui/gallery/app/AlbumPage$6;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$6;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$6;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #calls: Lcom/miui/gallery/app/AlbumPage;->hideDetails()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1200(Lcom/miui/gallery/app/AlbumPage;)V

    .line 431
    return-void
.end method
