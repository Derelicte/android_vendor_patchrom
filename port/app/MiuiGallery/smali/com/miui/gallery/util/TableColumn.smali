.class Lcom/miui/gallery/util/TableColumn;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"


# instance fields
.field public mIndex:I

.field public mIsTextType:Z

.field public mName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .parameter "isTextType"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/miui/gallery/util/TableColumn;->mIndex:I

    .line 33
    iput-object p2, p0, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/miui/gallery/util/TableColumn;->mIsTextType:Z

    .line 35
    return-void
.end method
