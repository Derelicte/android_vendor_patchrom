.class Lcom/miui/home/launcher/Launcher$Padding;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Padding"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field top:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 730
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$Padding;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput v0, p0, Lcom/miui/home/launcher/Launcher$Padding;->left:I

    .line 732
    iput v0, p0, Lcom/miui/home/launcher/Launcher$Padding;->right:I

    .line 733
    iput v0, p0, Lcom/miui/home/launcher/Launcher$Padding;->top:I

    .line 734
    iput v0, p0, Lcom/miui/home/launcher/Launcher$Padding;->bottom:I

    return-void
.end method
