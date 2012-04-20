.class Lcom/android/fileexplorer/CategoryBar$Category;
.super Ljava/lang/Object;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/CategoryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Category"
.end annotation


# instance fields
.field public aniStep:J

.field public resImg:I

.field final synthetic this$0:Lcom/android/fileexplorer/CategoryBar;

.field public tmpValue:J

.field public value:J


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/CategoryBar;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/CategoryBar$Category;->this$0:Lcom/android/fileexplorer/CategoryBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fileexplorer/CategoryBar;Lcom/android/fileexplorer/CategoryBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/CategoryBar$Category;-><init>(Lcom/android/fileexplorer/CategoryBar;)V

    return-void
.end method
