.class Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/PackageIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenResourceIdResult"
.end annotation


# instance fields
.field public id:I

.field public r:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/quicksearchbox/PackageIconLoader;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/PackageIconLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;->this$0:Lcom/android/quicksearchbox/PackageIconLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/PackageIconLoader;Lcom/android/quicksearchbox/PackageIconLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;-><init>(Lcom/android/quicksearchbox/PackageIconLoader;)V

    return-void
.end method
