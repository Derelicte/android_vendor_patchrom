.class Lcom/android/contacts/picker/RecentLoader$1;
.super Landroid/database/ContentObserver;
.source "RecentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/RecentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/picker/RecentLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/picker/RecentLoader;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/picker/RecentLoader$1;->this$0:Lcom/android/contacts/picker/RecentLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/picker/RecentLoader$1;->this$0:Lcom/android/contacts/picker/RecentLoader;

    invoke-virtual {v0}, Lcom/android/contacts/picker/RecentLoader;->forceLoad()V

    .line 51
    return-void
.end method
