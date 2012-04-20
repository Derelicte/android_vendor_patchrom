.class Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
.super Ljava/lang/Object;
.source "AsyncDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelocationHolder"
.end annotation


# instance fields
.field private state:I

.field private telocationRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/database/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Lcom/android/contacts/calllog/AsyncDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;

    return-object p1
.end method
