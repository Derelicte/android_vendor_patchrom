.class Lcom/miui/supermarket/MainTabActivity$3;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/MainTabActivity;->behaveOnNonWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$3;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$3;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity;->finish()V

    .line 483
    return-void
.end method
