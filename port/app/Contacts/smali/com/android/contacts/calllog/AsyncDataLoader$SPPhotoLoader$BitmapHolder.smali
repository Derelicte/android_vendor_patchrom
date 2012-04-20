.class Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
.super Ljava/lang/Object;
.source "AsyncDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Lcom/android/contacts/calllog/AsyncDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)V

    return-void
.end method
