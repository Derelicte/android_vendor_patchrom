.class Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;
.super Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
.source "FileIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableHolder"
.end annotation


# instance fields
.field drawableRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;-><init>(Lcom/android/fileexplorer/FileIconLoader$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fileexplorer/FileIconLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/Object;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 119
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p1
    :goto_0
    iput-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    .line 120
    return-void

    .line 119
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setImageView(Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method
