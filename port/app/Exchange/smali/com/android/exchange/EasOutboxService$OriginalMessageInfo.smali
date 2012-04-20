.class public Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
.super Ljava/lang/Object;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OriginalMessageInfo"
.end annotation


# instance fields
.field final mCollectionId:Ljava/lang/String;

.field final mItemId:Ljava/lang/String;

.field final mLongId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"
    .parameter "collectionId"
    .parameter "longId"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    .line 238
    return-void
.end method
