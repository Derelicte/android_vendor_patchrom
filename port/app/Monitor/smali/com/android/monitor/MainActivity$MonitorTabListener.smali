.class Lcom/android/monitor/MainActivity$MonitorTabListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/MainActivity;


# direct methods
.method private constructor <init>(Lcom/android/monitor/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/monitor/MainActivity$MonitorTabListener;->this$0:Lcom/android/monitor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/MainActivity;Lcom/android/monitor/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/monitor/MainActivity$MonitorTabListener;-><init>(Lcom/android/monitor/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 218
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/monitor/MainActivity$MonitorTabListener;->this$0:Lcom/android/monitor/MainActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/MainActivity$TabState;

    invoke-virtual {v1, v0}, Lcom/android/monitor/MainActivity;->selectTab(Lcom/android/monitor/MainActivity$TabState;)V

    .line 223
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 213
    return-void
.end method
