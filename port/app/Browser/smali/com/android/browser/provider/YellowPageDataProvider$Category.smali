.class public Lcom/android/browser/provider/YellowPageDataProvider$Category;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/YellowPageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field public final _sites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/provider/YellowPageDataProvider$Site;",
            ">;"
        }
    .end annotation
.end field

.field public final _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "catName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/provider/YellowPageDataProvider$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, sitesLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Site;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    .line 107
    return-void
.end method
