.class Lcom/miui/gallery/app/HomePage$6;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/HomePage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$6;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$6;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->hideDetails()V
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2100(Lcom/miui/gallery/app/HomePage;)V

    .line 843
    return-void
.end method
