#import "datathinking.org-report-template.typ": datathinking
#show: body => datathinking(
  title: "Expanding the OMOP Common Data Model in Accord with Federal Rules for Hospital Price Transparency and Transparency in Coverage",
  authors: (
    (
      name: "Dr. Jaan Altosaar Li",
      affiliation: "One Fact Foundation
University of Tartu University",
      email: "jaan@onefact.org",
    ),
    (
      name: "Michele Tadiello",
      affiliation: "One Fact Foundation",
      email: "michele@onefact.org",
    ),
    (
      name: "Cierra Robson",
      affiliation: "Ida B. Wells Just Data Lab
Department of Sociology
Harvard University",
      email: "",
    ),
  ),
  abstract: "The material consequences of data and the artificial intelligence algorithms trained on data belie global hierarchies of power. For example, the field of algorithmic fairness may of emerged because of the economic advantages of providing advertising systems free of regulatory problems. Data-driven advertising practices, financial instrument design, credit scoring, tax planning, biomedical science, pharamceutical research and development, housing, corporate real estate, and public infrastructure are all driven by data and the humans who interpret algorithms trained on this data and make decisions based on their interpretations that affect us all across these sectors of society. Becoming fluent in the abstractions necessary to represent the incentives and market dynamics of artificial intelligence is vital for learners who seek autonomy, and community organizations that seek to assess the impact they aim to achieve. Understanding and amplifying these goals of increased autonomy and impact for under-represented learners and community organizations they might work with requires understanding the human scale prior to building mental models of algorithms that scale. Human involvement is necessary across the discipline of data thinking, from data collection, curation, standardization, analysis, visualization, communication, and advertising, alongside other core data thinking skills. Decisions about capital allocation and human resources allocation must be made at each stage a data-to-decision journey. Many people prefer to live and work within countries and systems that prioritize the worst-off among a population. In this data thinking bootcamp for Tech Freedom Schools, we take this stance, and center the creation and delivery of educational materials on the emotional journey of a learner. Besides enabling autonomy and impact, this can help bridge educational gaps between under-represented community organizations and the PhD holders who build AI (both groups bear the consequences of algorithmic decision-making systems at scale). Through this collaboration between the One Fact Foundation and instructors the Ida B. Wells Just Data Lab in the Department of African American Studies and the Department of Sociology at Harvard University, we can help learners give informed consent from sociological, anthropological, and ethnographic lenses that are vital to understand the emotions, thoughts, and behaviors of people in power who deploy artificial intelligence---and truly give every learner a chance to decide if and when to subject themselves to algorithmic decision-making that may run the risk of ignoring some of these lenses.",
  body,
)

#set heading(numbering: none)
/* 
#outline()

#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)

#outline(
  title: [List of Tables],
  target: figure.where(kind: table),
)
*/

// GLOSSARY
#let clinicalbert = box[Clinical#smallcaps[Bert]]

= week 1: descriptivism and prescriptivism in language, health, psychology, & culture

The first week sets the stakes and exposes learners to difficult questions, and begins shaking the foundations for concepts that might traditionally be attended with psychological rigidity. 

To start helping learners build psychological flexibility in approaching core data thinking skills, an experiential approach is necessary for exposure to difficult concepts and communication about these in semi-public spaces such as the learner team chat or GitHub issues where homework, reading, watching & listening exercises are assigned and experience reports recorded.

In English style and usage, there is no right answer. This is because practitioners of data operate on the principle of parsimony: shorter descriptions of things are easier to communicate about. For if a phenomenon _must_ be communicated about a certain way (a 'prescriptive' stance), then the working memory of the practitioner would suffer from increased load: two things must be kept in mind instead of one, the first being a description of a phenomenon, and the second being the rules the phenomenon _must_ be described with. But cognitive load prevents proper analysis of data and subsequent decision-making, and runs the risk of a practitioner omitting unobserved confounders from analysis and making false conclusions. 

To illustrate these principles to learners, we ground our initial discussion on language, as a gentle introduction to the feeling of the rug being swept from under your feet as you realize that most things are a social construct subject to the forces of cultural evolution, collective behavior, history and so on: from race to gender, to the country you live in and the verbal events of thoughts, emotions, and feelings you use to communicate each day.



== Topics 
We illustrate the differences between prescriptivist and descriptivist stances toward the English language using the following readings:


== Skills
The first week serves to begin exposing you to stimuli of your choice (such as embarking on this course! or choosing what to read).

- *Speaking on Zoom.* This helps socialize you to the common fear of public speaking, notice which other learners or instructors also share this fear, and expose ourselves collectively. Such exposure during the first week helps begin to dull the emotional response to the stimulus of public speaking and associated anxieties or fears, if they exist. 

- *Signing up for new tools and paying attention to friction, pain points, cognitive processes.* 

- *Writing.* Experience report.

- *Asking for help.*

- *Creating a visualization of 10 million 3-1-1 calls in New York City.*

- *Asking large language models for help reading.*

= week 2: mathematics, statistics, and thinking like a limited partner buying out 


= week 4: visualizations and metadata

@heer_mosaic_2023 will be used to visualize all of the team chat to date.

= week 5: active learning with a human in the loop

/*
= standardizing and visualizing clinical data repositories
*/
/*
We use the data build tool @noauthor_dbt_nodate to standardize clinical data and version control the resulting static, compressed files that are compatible with Amazon Simple Storage Service (S3), which is compliant with the Health Insurance Portability and Accountability Act. Static files in standardized format on Amazon S3 benefit from scalable map-reduce computations that can be parallelized over S3 workers using duckdb @raasveldt_duckdb_2019, an embedded analytical database engine that scales structured query language (SQL) queries across terabytes of data.
*/

/*
Label Studio is an open source data labeling platform that we have scaled to train natural language processing models such as #clinicalbert to analyze over five million records with human clinicians annotating text data at a large academic medical center #cite("labelstudio"). Similarly, we have also used this tool to implement a labeling workflow for radiologists and demonstrated super-human performance of the open source computer vision model for detecting pediatric upper extremity fractures @noauthor_childfx_2023. 
*/

/*
= the phenotype workflow

We have discussed the standardizing and visualizing of clinical data repositories of the scale of small countries with millions of patient records. (For example, we have worked with a team in Estonia that has trained #clinicalbert on the entirety of the electronic health record of this country to predict hospital readmission.) However, for disorder and disease classification systems or taxonomies that regularly evolve in response to research (such as coronavirus disease and its sequelae), it is necessary to regularly revise the written and computational definitions of the observable characteristics of disease---the phenotype---and assess inter-rater reliability of such definitions, in order to visualize patterns of health and disease to best improve clinical guidelines, training, and deployed artificial intelligence solutions. 


For this, we have built the phenotype workflow @zelko_developing_2023 in collaboration with the phenotype working group in the OHDSI community. The phenotype workflow involves creating a reproducible and replicable open source pipeline for retrospective observational studies, which is a prerequisite for deploying artificial intelligence such as #clinicalbert into the point of care. 


The phenotype workflow requires subject matter experts such as bioinformaticions and clinicians to work alongside research scientists to devise definitions of health, disorder, and disease, and to then annotate patient records in accord with these definitions. Next, the definitions are revised to achive high inter-rater reliability. This has enabled us to validate this workflow by conducting network analyses of tens of millions of patient records. 

#figure(
  table(
    columns: 4,
    stroke: none,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [test],
)

*/


#figure(
  image("figures/phenotype-workflow-diagram.svg"),
  caption: [The phenotype workflow can help practice data thinking to best validate definitions of health and disease, intellectual property, the market dynamics, etc.],
)
        
/*
#figure(
  image("../design/gantt-chart.png"),
  caption: [Integrating #clinicalbert, Label Studio, and Mosaic with Child Mind clinical data.],
)
*/

/*
= legal restrictions on non-profit release of open source artificial intelligence

Care algorithms deployed across a community organizations across the United States must comply with a their jurisdictions' privacy laws, anti-discrimination laws, and antitrust laws, in addition to conforming to the rules, laws, and regulations governing data journeys and evidence-based decision-making. 
*/

/*
In some countries such as the United States, federal funding of biomedical research requires boards of patients and laypeople, alongside experts, to govern the development and deployment of algorithms that interact with patients and patient data. Gaining the trust and permission to use patient data from patients and their care teams requires the informed consent of all parties, or the ability of patients to weigh the pros and cons of their data being monetized in order to benefit from better care and services in the future. 
*/
/*
One decision-making aid that can serve patients' and providers' ability to give informed consent to interact with care algorithms is open source software such as what we have proposed here: the combination of #clinicalbert @huang_clinicalbert_2020 for leveraging patterns in clinical data repositories with Label Studio @labelstudio for human-in-the-loop assessment and monitoring, and Mosaic @heer_mosaic_2023 for visualization of the resulting patterns to inform care guidelines and deploy algorithms in clinician- and patient-facing applications.
*/

/*
Deployed open source care algorithms have merits: they can be publicly inspected for conformance with the law, compliance with clinical guidelines, and interpretability to patients and providers. Open source care algorithms can enhance clinical care, patient experience, and the efficiency of health systems -- and build trust by enabling the public to assess and monitor the performance of algorithms and their safety over time. But similar to federal laws for the protection of patients and the advancement of open access biomedical research, the Internal Revenue Service must remunerate its stakeholder, the government, by planning tax rates and receiving monies from business activities. 

This creates a direct conflict with the incentive that patients and providers might have to prefer open source, non-profit backed care algorithms: the Internal Revenue Service now prohibits corporations with 501(c)(3) designation from releasing open source software.  For example, one rationale for this decision is to prevent for-profit corporations from funneling the development of lucrative artificial intelligence into open source "shell" non-profit corporations.

Open source software, by definition, can be used by any entity for generating revenue, which must be taxed to remunerate the Internal Revenue Service. For example, the majority of educational institutions and hospitals in the United States have a tax-exempt 501(c)(3) designation from the Internal Revenue Service, which prohibits them from developing and using open source care algorithms unless they work with for-profit entities to release this software. Some universities even have technology transfer offices that refuse to work with open source inventions. 

The One Fact Foundation, a corporation with 501(c)(3) designation from the Internal Revenue Service, was created to solve this problem: we release Data Thinking and the GPT models we build such as @huang_clinicalbert_2020 through a limited liability company that, in turn, is owned by the parent 501(c)(3) and has been created solely for this purpose using a legal team with prior expertise ranging from the Linux Foundation to the Software Freedom Law Center. The One Fact Foundation's open source, nonprofit-backed engine powers care learner- and community organization-facing machine learning and artificial intelligence algorithms; our tooling scales to clinical data repositories with petabytes of data, both structured and unstructured fields of repositories and data lakes, financial transactions, real estate, health, climate, and other areas where timeseries databases, and visualization engines for business intelligence powering consumer- and client-facing product are able to scale as much as we are.
/*
The next generation of digital therapeutics will require petabyte-scale computation that integrate time-series databases of biometrics data, clinical data repositories with millions of patient records in standard format, artificial intelligence algorithms that learn patterns across these multiple modalities, labeling platforms for annotating patient trajectories using expert feedback, and visualization engines to power patient- and clinician decision-making and application programming interfaces for broad dissemination. The One Fact Foundation aims to partner with the Child Mind Institute to execute this first proposal in a quarter given an initial capital allocation, with a view toward a long-term partnership. This proposal serves to delinate a scope of work in the Gantt chart above for an initial sprint. We have proposed a foundation for future work, to best measure which core engines maximally benefit patients, clinicians, and ultimately broader society. This will enable delivering health and mental health care at scale in an equitable, affordable, and accessible manner.
*/
*/

#bibliography("onefact.org.bib")