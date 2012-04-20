.class Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;
.super Lcom/android/quicksearchbox/util/CachedLater;
.source "PackageIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/PackageIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconLaterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/CachedLater",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/android/quicksearchbox/util/NamedTask;"
    }
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/quicksearchbox/PackageIconLoader;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/PackageIconLoader;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "iconUri"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/CachedLater;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->mUri:Landroid/net/Uri;

    .line 229
    return-void
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->store(Ljava/lang/Object;)V

    return-void
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    iget-object v2, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->mUri:Landroid/net/Uri;

    #calls: Lcom/android/quicksearchbox/PackageIconLoader;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/quicksearchbox/PackageIconLoader;->access$500(Lcom/android/quicksearchbox/PackageIconLoader;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 256
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "QSB.PackageIconLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected create()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    #getter for: Lcom/android/quicksearchbox/PackageIconLoader;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    invoke-static {v0}, Lcom/android/quicksearchbox/PackageIconLoader;->access$100(Lcom/android/quicksearchbox/PackageIconLoader;)Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    .line 234
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    #getter for: Lcom/android/quicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/quicksearchbox/PackageIconLoader;->access$400(Lcom/android/quicksearchbox/PackageIconLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    #getter for: Lcom/android/quicksearchbox/PackageIconLoader;->mUiThread:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/quicksearchbox/PackageIconLoader;->access$300(Lcom/android/quicksearchbox/PackageIconLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;

    invoke-direct {v2, p0, v0}, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;-><init>(Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method
