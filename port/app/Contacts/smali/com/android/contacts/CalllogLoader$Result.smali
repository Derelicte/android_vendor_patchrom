.class public final Lcom/android/contacts/CalllogLoader$Result;
.super Ljava/lang/Object;
.source "CalllogLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CalllogLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final mCalllogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/CalllogMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private spInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/CalllogLoader$Result;->mCalllogs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/CalllogLoader$Result;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/contacts/CalllogLoader$Result;->spInfo:Landroid/util/Pair;

    return-object p1
.end method


# virtual methods
.method public getCalllog()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/CalllogMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/CalllogLoader$Result;->mCalllogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpInfo()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/contacts/CalllogLoader$Result;->spInfo:Landroid/util/Pair;

    return-object v0
.end method
