.class final Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "MiuiHomeTabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiHomeTabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
