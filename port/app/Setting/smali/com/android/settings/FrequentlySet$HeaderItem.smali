.class Lcom/android/settings/FrequentlySet$HeaderItem;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FrequentlySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderItem"
.end annotation


# instance fields
.field headerFileId:I

.field headerId:I

.field isDefaultKey:Z

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "isDefaultKey"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    .line 105
    iput p3, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->headerId:I

    .line 106
    iput-boolean p4, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    .line 107
    return-void
.end method
