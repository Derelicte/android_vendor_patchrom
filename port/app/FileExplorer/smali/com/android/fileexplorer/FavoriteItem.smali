.class public Lcom/android/fileexplorer/FavoriteItem;
.super Ljava/lang/Object;
.source "FavoriteItem.java"


# instance fields
.field public fileInfo:Lcom/android/fileexplorer/FileInfo;

.field public id:J

.field public location:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "i"
    .parameter "t"
    .parameter "l"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/android/fileexplorer/FavoriteItem;->id:J

    .line 22
    iput-object p3, p0, Lcom/android/fileexplorer/FavoriteItem;->title:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "t"
    .parameter "l"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteItem;->title:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    .line 18
    return-void
.end method
