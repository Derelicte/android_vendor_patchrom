.class Lcom/miui/player/ui/view/AlphabetFastIndexer$1;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/AlphabetFastIndexer;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/player/ui/view/AlphabetFastIndexer$1;->this$0:Lcom/miui/player/ui/view/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetFastIndexer$1;->this$0:Lcom/miui/player/ui/view/AlphabetFastIndexer;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->refreshMask()V

    .line 159
    return-void
.end method
