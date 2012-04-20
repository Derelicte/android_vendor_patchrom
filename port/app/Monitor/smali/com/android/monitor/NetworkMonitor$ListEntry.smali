.class Lcom/android/monitor/NetworkMonitor$ListEntry;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListEntry"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mobile:Landroid/widget/CheckBox;

.field private text:Landroid/widget/TextView;

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;

.field private wifi:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/NetworkMonitor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor$ListEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;

    return-object p1
.end method
