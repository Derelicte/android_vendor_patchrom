.class Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JingleInfoPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 133
    return-void
.end method
