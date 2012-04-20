.class Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;
.super Ljava/lang/Object;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplyListItemInfo"
.end annotation


# instance fields
.field mIconId:I

.field mTitleId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "iconId"
    .parameter "titleId"

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput p1, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;->mIconId:I

    .line 931
    iput p2, p0, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;->mTitleId:I

    .line 932
    return-void
.end method
