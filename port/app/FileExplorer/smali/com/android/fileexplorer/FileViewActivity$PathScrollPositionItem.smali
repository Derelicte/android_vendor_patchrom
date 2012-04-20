.class Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;
.super Ljava/lang/Object;
.source "FileViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathScrollPositionItem"
.end annotation


# instance fields
.field path:Ljava/lang/String;

.field pos:I

.field final synthetic this$0:Lcom/android/fileexplorer/FileViewActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "p"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->path:Ljava/lang/String;

    .line 208
    iput p3, p0, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->pos:I

    .line 209
    return-void
.end method
