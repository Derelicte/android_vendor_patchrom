.class abstract Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
.super Ljava/lang/Object;
.source "FileIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImageHolder"
.end annotation


# instance fields
.field state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fileexplorer/FileIconLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
    .locals 3
    .parameter "cate"

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/android/fileexplorer/FileIconLoader$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 68
    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;-><init>(Lcom/android/fileexplorer/FileIconLoader$1;)V

    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Lcom/android/fileexplorer/FileIconLoader$BitmapHolder;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileIconLoader$BitmapHolder;-><init>(Lcom/android/fileexplorer/FileIconLoader$1;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract isNull()Z
.end method

.method public abstract setImage(Ljava/lang/Object;)V
.end method

.method public abstract setImageView(Landroid/widget/ImageView;)Z
.end method
