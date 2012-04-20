.class Lcom/miui/gallery/app/AlbumPage$2;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPage;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;

.field final synthetic val$repository:Lcom/miui/gallery/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$2;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iput-object p2, p0, Lcom/miui/gallery/app/AlbumPage$2;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage$2;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/miui/gallery/ui/PositionRepository$Position;)Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 3
    .parameter "identity"
    .parameter "target"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$2;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 292
    .local v0, p:Lcom/miui/gallery/ui/PositionRepository$Position;
    if-eqz v0, :cond_0

    .line 295
    .end local v0           #p:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    return-object v0

    .line 293
    .restart local v0       #p:Lcom/miui/gallery/ui/PositionRepository$Position;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$2;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v1, p3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 294
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$2;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    const/high16 v2, 0x4300

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$2;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    goto :goto_0
.end method
