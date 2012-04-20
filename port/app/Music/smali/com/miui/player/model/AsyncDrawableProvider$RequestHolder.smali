.class Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;
.super Ljava/lang/Object;
.source "AsyncDrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHolder"
.end annotation


# instance fields
.field public final mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/model/AsyncDrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter
    .parameter "imageView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    .local p3, info:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mKey:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mInfo:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 253
    return-void
.end method
