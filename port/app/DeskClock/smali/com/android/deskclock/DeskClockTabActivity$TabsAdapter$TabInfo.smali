.class final Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "DeskClockTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;
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

.field private fragment:Landroid/app/Fragment;


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
    .line 131
    .local p1, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 133
    iput-object p2, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
