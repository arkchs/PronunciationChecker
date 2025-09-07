# **Pronunciation Checker**

### **Why This Project Was Created?**

This project was developed to assist individuals with pronunciation disabilities, such as those with **dysarthria**, which involves muscle weakness affecting speech clarity, and **apraxia of speech**, a neurological condition that impacts speech planning and sequencing. It also addresses articulation and phonological disorders, which are often linked to physical issues like a cleft palate, hearing impairments, or developmental factors.

-----

### **Difficulties Faced**

The primary challenges encountered during this project were related to **model architecture**. We used **wav2vec2.0** to extract global speech representations and then a **Branchformer model** to convert these into a specialized local and global representation. The Branchformer utilizes a parallel **cg-MLP** and **MHSA** to create a merged, contextualized embedding that represents the speech waveform at a granular level. Additionally, the implementation and learning curve of a **microservice architecture** presented some difficulties.


### **The Technology Stack**

**Python** and **PyTorch** were chosen for their dominance in the deep learning field and their user-friendly, high-level programming experience, which facilitates ease of development. The project employs a **microservice architecture** where core functionalities like authentication and service routes are built with **Node.js** due to its simplicity and ease of development. The machine learning inference is handled on a separate server using **FastAPI**. This separation of business logic from the machine learning inference ensures a modular, scalable, and testable environment.


| <img width="596" height="425" alt="HLD" src="https://github.com/user-attachments/assets/36af77e4-ba25-4e16-8eed-ba535ac78f6d" /> | 
|:-------:|
 | *Software Architecture* | 

| <img width="741" height="548" alt="flowchart" src="https://github.com/user-attachments/assets/4e252183-f401-4c1d-abe6-49b2c0e94588" /> |
|:-------:|
| *Flowchart* |

| ![arch1.png](https://github.com/user-attachments/assets/1a011940-abfa-4028-8afb-18e8efff7d48) | 
|:---:| 
| *Wav2Vec2.0 architecture* |

| ![arch2.png](https://github.com/user-attachments/assets/f3bd3609-4e80-4395-8aef-978791dced34) | 
|:---:| 
| *Branchformer architecture* |

For further knowledge on these architectures, you can read this [ASAPP E-Branchformer article](https://www.asapp.com/blog/asapp-tops-the-asr-leaderboard-with-e-branchformer).
