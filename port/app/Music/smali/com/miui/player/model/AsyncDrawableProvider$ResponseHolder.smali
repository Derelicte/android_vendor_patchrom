.class Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;
.super Ljava/lang/Object;
.source "AsyncDrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHolder"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mKey:Ljava/lang/String;

.field public final mStatus:Z

.field final synthetic this$0:Lcom/miui/player/model/AsyncDrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "drawable"
    .parameter "status"

    .prologue
    .line 235
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.ResponseHolder;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p3, p0, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object p2, p0, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mKey:Ljava/lang/String;

    .line 238
    iput-boolean p4, p0, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mStatus:Z

    .line 239
    return-void
.end method
